import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/extension/int_extension.dart';

class DGLHomeCategoryItem extends StatelessWidget {
  final DGLCategoryModel _categoryItem;

  DGLHomeCategoryItem(this._categoryItem);

  @override
  Widget build(BuildContext context) {
    final bgColor = _categoryItem.cColor;
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12.px),
            gradient:
            LinearGradient(colors: [bgColor.withOpacity(.5), bgColor])),
        alignment: Alignment.center,
        child: Text(
          _categoryItem.title,
          style: Theme
              .of(context)
              .textTheme
              .display1
              .copyWith(
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(DGLMealScreen.routeName,arguments: _categoryItem);
      },
    );
  }
}
