import 'package:favorcate/core/model/category_model.dart';
import 'package:flutter/material.dart';
import 'meal_content.dart';
class DGLMealScreen extends StatelessWidget {
  static const String routeName = "/meal";
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as DGLCategoryModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ) ,
      body: Center(
        child: DGLMealContent(),
      ),
    );
  }
}
