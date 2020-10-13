import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:favorcate/ui/widgets/meal_item.dart';
class DGLMealContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as DGLCategoryModel;
    return Selector<DGLMealViewModel,List<DGLMealModel>>(
      selector: (ctx,mealVM){
        return mealVM.meals.where((meal){
          return meal.categories.contains(category.id);
        }).toList();
      },
      builder: (ctx,meals,child){
        return ListView.builder(itemCount: meals.length,itemBuilder: (ctx,index){
          return DGLMealItem(meals[index]);
        });
      },
    );
  }
}