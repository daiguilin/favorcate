import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/services/http_request.dart';

class DGLMealRequest {
  static Future<List<DGLMealModel>> getMealData() async {
    final url = "/meal";
    final result = await HttpRequest.request(url);

    final mealArray = result["meal"];
    List<DGLMealModel> meals = [];

    for (var json in mealArray) {
      meals.add(DGLMealModel.fromJson(json));
    }
    return meals;
  }
}
