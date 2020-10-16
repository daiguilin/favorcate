import 'package:flutter/material.dart';
import 'home_content.dart';
import 'home_app_bar.dart';
import 'home_drawer.dart';
class DGLHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:DGLHomeAppBar(context),
      body: Center(child:DGLHomeContent()),
      drawer:DGLHomeDrawer() ,
    );
  }
}
