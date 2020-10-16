import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/material.dart';
import 'detail_content.dart';
import 'detail_floating_button.dart';
class DGLDetailScreen extends StatelessWidget {
  static const routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as DGLMealModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Center(
        child: DGLDetailContent(meal),
      ),
      floatingActionButton:DGLFloatingButton(meal)
    );
  }
}
