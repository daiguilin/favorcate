import 'package:flutter/material.dart';
import '../../ui/pages/main/main.dart';
//import '../../ui/pages/home/home.dart';
//import '../../ui/pages/favor/favor.dart';
class DGLRouter {
  static final String initialRoute = DGLMainScreen.routeName;
  static final Map<String, WidgetBuilder> routes = {
    DGLMainScreen.routeName: (ctx) => DGLMainScreen()
  };

  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
