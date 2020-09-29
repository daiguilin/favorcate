import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/services/meal_request.dart';
import 'package:flutter/material.dart';

class MealViewModel extends ChangeNotifier{
  List<DGLMealModel> _meals=[];

  List<DGLMealModel> get meals{
    return _meals;
  }
  MealViewModel(){
    DGLMealRequest.getMealData().then((res){
      _meals =res;
      notifyListeners();
    });
  }
}