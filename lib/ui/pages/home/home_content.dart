import 'package:flutter/material.dart';
import 'package:favorcate/core/services/json_parse.dart';
import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/extension/int_extension.dart';
import 'home_category_item.dart';

class DGLHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DGLCategoryModel>>(
      future: DGLJsonParse.getCategoryData(),
      builder:(ctx,snapshot){
        if(!snapshot.hasData)return CircularProgressIndicator();
        if(snapshot.error!= null) return Center(child: Text("请求失败！"),);
        final  categroies=snapshot.data;
        return GridView.builder(
            padding: EdgeInsets.all(20.px),
            itemCount: categroies.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.px,
                mainAxisSpacing: 20.px,
                childAspectRatio: 1.5),
            itemBuilder: (ctx, index) {
              return DGLHomeCategoryItem(categroies[index]);
            });
      } ,
    );
  }
}
