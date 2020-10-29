import 'package:flutter/material.dart';
import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/filter_view_model.dart';

class BaseMealViewModel extends ChangeNotifier {
  List<DGLMealModel> _meals = [];
  DGLFilterViewModel _filterVM;

  void updateFilters(DGLFilterViewModel filterVM) {
    _filterVM = filterVM;
  }

  List<DGLMealModel> get meals {
    return _meals.where((meal) {
      if (_filterVM.isVegan && !meal.isVegan) return false;
      if (_filterVM.isVegetarian && !meal.isVegetarian) return false;
      if (_filterVM.isLactoseFree && !meal.isLactoseFree) return false;
      if (_filterVM.isGlutenFree && !meal.isGlutenFree) return false;

      return true;
    }).toList();
  }

  List<DGLMealModel> get originMeals {
    return _meals;
  }

  set meals(List<DGLMealModel> value) {
    _meals = value;
    notifyListeners();
  }
}
