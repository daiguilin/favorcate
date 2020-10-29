import 'package:flutter/material.dart';
import 'package:favorcate/core/extension/int_extension.dart';
import '../filter/filter.dart';
class DGLHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: Column(
          children: <Widget>[
            buildHeaderView(context),
            buildListTile(context,Icon(Icons.restaurant),"进度",(){
              Navigator.of(context).pop();
            }),
            buildListTile(context,Icon(Icons.settings),"过滤",(){
              Navigator.of(context).pushNamed(DGLFilterScreen.routeName);
            }),
          ],
        ),
      ),
    );
  }

  Widget buildHeaderView(BuildContext context){
    return Container(
      width: double.infinity,
      height: 120.px,
      color: Colors.orange,
      alignment: Alignment(0,0.5),
      child: Text("开始动手",style: Theme.of(context).textTheme.display4,),
    );
  }

  Widget buildListTile(BuildContext context,Widget icon,String title,Function handler){
    return ListTile(
      leading: icon,
      title: Text(title,style: Theme.of(context).textTheme.display2,),
      onTap: handler,
    );
  }
}
