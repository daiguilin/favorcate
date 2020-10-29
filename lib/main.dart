import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/core/viewmodel/filter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './ui/shared/app_theme.dart';
import './core/router/route.dart';
import 'package:favorcate/ui/shared/size_fit.dart';

void main() {
  runApp(MultiProvider(
    providers: [
//      ChangeNotifierProvider(
//        create: (ctx) => DGLMealViewModel(),
//      ),
//      ChangeNotifierProvider(
//        create: (ctx) => DGLFavorViewModel(),
//      ),
      ChangeNotifierProvider(
        create: (ctx)=>DGLFilterViewModel(),
      ),
      ChangeNotifierProxyProvider<DGLFilterViewModel,DGLFavorViewModel>(
        create: (ctx) => DGLFavorViewModel(),
        update: (ctx,filterVM,mealVM){
          mealVM.updateFilters(filterVM);
          return mealVM;
        },
      ),
      ChangeNotifierProxyProvider<DGLFilterViewModel,DGLMealViewModel>(
        create: (ctx) => DGLMealViewModel(),
        update: (ctx,filterVM,mealVM){
          mealVM.updateFilters(filterVM);
          return mealVM;
        },
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    DGLSizeFit.initialize();
    return MaterialApp(
      title: '美食广场',
      //主题
      theme: DGLAppTheme.norTheme,

      //路由
      initialRoute: DGLRouter.initialRoute,
      routes: DGLRouter.routes,
      onGenerateRoute: DGLRouter.generateRoute,
      onUnknownRoute: DGLRouter.unknownRoute,
    );
  }
}
