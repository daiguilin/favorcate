import 'package:flutter/material.dart';
import 'favor_content.dart';
class DGLFavorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我得收藏"),
      ),
      body: Center(
        child:DGLFavorContent(),
      ),
    );
  }
}
