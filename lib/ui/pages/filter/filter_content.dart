import 'package:favorcate/core/viewmodel/filter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/core/extension/int_extension.dart';
import 'package:provider/provider.dart';

class DGLFilterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[buildChoiceText(context), buildChoiceSelect()],
    );
  }

  Widget buildChoiceText(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.px),
      alignment: Alignment.center,
      child: Text(
        "展示你的选择",
        style: Theme.of(context)
            .textTheme
            .display4
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildChoiceSelect() {
    return Expanded(
      child: Consumer<DGLFilterViewModel>(
        builder: (ctx, filterVM, child) {
          return ListView(
            children: <Widget>[
              buildListTitle("无谷蛋白", "无谷蛋白", filterVM.isGlutenFree, (value) {
                filterVM.isGlutenFree = value;
              }),
              buildListTitle("不含乳糖", "不含乳糖", filterVM.isLactoseFree, (value) {
                filterVM.isLactoseFree = value;
              }),
              buildListTitle("素食主义", "素食主义", filterVM.isVegetarian, (value) {
                filterVM.isVegetarian = value;
              }),
              buildListTitle("严格素食主义", "严格素食主义", filterVM.isVegan, (value) {
                filterVM.isVegan = value;
              })
            ],
          );
        },
      ),
    );
  }

  Widget buildListTitle(
      String title, String subTitle, bool value, Function change) {
    return ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: Switch(value: value, onChanged: change));
  }
}
