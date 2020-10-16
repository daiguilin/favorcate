import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';
import '../../ui/pages/main/main.dart';
import '../../ui/pages/detail/detail.dart';
//import '../../ui/pages/home/home.dart';
//import '../../ui/pages/favor/favor.dart';
class DGLRouter {
  static final String initialRoute = DGLMainScreen.routeName;
  static final Map<String, WidgetBuilder> routes = {
    DGLMainScreen.routeName: (ctx) => DGLMainScreen(),
    DGLMealScreen.routeName:(ctx)=>DGLMealScreen(),
    DGLDetailScreen.routeName:(ctx)=>DGLDetailScreen()
  };

  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
