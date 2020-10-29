import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/base_view_model.dart';

class DGLFavorViewModel extends BaseMealViewModel{


  void addMeal(DGLMealModel meal){
    originMeals.add(meal);
    notifyListeners();
  }

  void removeMeal(DGLMealModel meal){
    originMeals.remove(meal);
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
    return originMeals.contains(meal);
  }
}