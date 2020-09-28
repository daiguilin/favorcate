import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/category_model.dart';

class JsonParse{
  static Future<List<DGLCategoryModel>> getCategoryData () async{
    //1.加载json文件
    final jsonString = await rootBundle.loadString("assets/json/category.json");

    final result = jsonDecode(jsonString);

    final resultList = result["category"];

    List<DGLCategoryModel> categories = [];

    for(var json in resultList){
      categories.add(DGLCategoryModel.fromJson(json));
    }

    return categories;
  }
}