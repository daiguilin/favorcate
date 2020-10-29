
import 'package:favorcate/core/services/meal_request.dart';
import 'package:favorcate/core/viewmodel/base_view_model.dart';

class DGLMealViewModel extends BaseMealViewModel{
  DGLMealViewModel(){
    DGLMealRequest.getMealData().then((res){
      meals =res;
    });
  }
}