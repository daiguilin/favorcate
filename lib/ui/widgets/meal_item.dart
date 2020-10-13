import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/core/extension/int_extension.dart';
import 'operation_item.dart';
final cardRadius = 12.px;

class DGLMealItem extends StatelessWidget {
  final DGLMealModel _item;

  DGLMealItem(this._item);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.px),
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cardRadius)),
      child: Column(
        children: <Widget>[buildBasicInfo(context),buildOperationInfo()],
      ),
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(cardRadius),
              topRight: Radius.circular(cardRadius)),
          child: Image.network(
            _item.imageUrl,
            width: double.infinity,
            height: 250.px,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 10.px,
          bottom: 10.px,
          child: Container(
            width: 300.px,
            padding: EdgeInsets.symmetric(horizontal: 10.px, vertical: 5.px),
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(6.px)),
            child: Text(_item.title,
                style: Theme.of(context)
                    .textTheme
                    .display3
                    .copyWith(color: Colors.white)),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo() {
    return Padding(

      padding: EdgeInsets.all(16.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          DGLOperationItem(Icon(Icons.schedule), "${_item.duration}分钟"),
          DGLOperationItem(Icon(Icons.restaurant), "${_item.complex}"),
          DGLOperationItem(Icon(Icons.favorite), "未收藏")
        ],
      ),
    );
  }
}
