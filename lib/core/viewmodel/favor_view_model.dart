import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/material.dart';

class DGLFavorViewModel extends ChangeNotifier{
  List<DGLMealModel> _favorMeals = [];

  List<DGLMealModel> get favorMeals{
    return _favorMeals;
  }

  void addMeal(DGLMealModel meal){
    _favorMeals.add(meal);
    notifyListeners();
  }

  void removeMeal(DGLMealModel meal){
    _favorMeals.remove(meal);
    notifyListeners();
  }

  void handleMeal(DGLMealModel meal){
    if(isFavor(meal)){
      removeMeal(meal);
    }else{
      addMeal(meal);
    }
  }

  bool  isFavor(DGLMealModel meal){
    return _favorMeals.contains(meal);
  }
}