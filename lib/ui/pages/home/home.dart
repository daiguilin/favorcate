import 'package:flutter/material.dart';
import 'home_content.dart';
class DGLHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(child:DGLHomeContent()),
    );
  }
}
