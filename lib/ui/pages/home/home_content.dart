import 'package:flutter/material.dart';
import 'package:favorcate/core/services/json_parse.dart';
import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/extension/int_extension.dart';

class DGLHomeContent extends StatefulWidget {
  @override
  _DGLHomeContentState createState() => _DGLHomeContentState();
}

class _DGLHomeContentState extends State<DGLHomeContent> {
  List<DGLCategoryModel> _categroies = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    JsonParse.getCategoryData().then((res) {
      setState(() {
        _categroies = res;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(20.px),
        itemCount: _categroies.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.px,
            mainAxisSpacing: 20.px,
            childAspectRatio: 1.5),
        itemBuilder: (ctx, index) {
          final bgColor = _categroies[index].cColor;
          return Container(
            decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(12),
                gradient:
                    LinearGradient(colors: [bgColor.withOpacity(.5), bgColor])),
            alignment: Alignment.center,
            child: Text(
              _categroies[index].title,
              style: Theme.of(context).textTheme.display1.copyWith(
                fontWeight: FontWeight.bold
              ),
            ),
          );
        });
  }
}
