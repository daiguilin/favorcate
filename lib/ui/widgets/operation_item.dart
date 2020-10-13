import 'package:flutter/material.dart';
import 'package:favorcate/core/extension/int_extension.dart';
class DGLOperationItem extends StatelessWidget {
  final Widget _icon;
  final String _title;
  DGLOperationItem(this._icon,this._title);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _icon,
        SizedBox(width: 3.px,),
        Text(_title)
      ],
    );
  }
}
