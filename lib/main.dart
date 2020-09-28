import 'package:flutter/material.dart';
import './ui/shared/app_theme.dart';
import './core/router/route.dart';
import 'package:favorcate/ui/shared/size_fit.dart';
void main() => runApp(MyApp());

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
