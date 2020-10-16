import 'package:flutter/material.dart';

class DGLAppTheme {
  //1.共有属性
  static const double bodyFontSize=12;
  static const double smallFontSize=16;
  static const double normalFontSize = 20;
  static const double largeFontSize =24;
  static const double xlargeFontSize =30;

  static final Color normalTextColors = Colors.red;
  static final Color darkTextColors = Colors.green;

  //2.普通模式
  static final ThemeData norTheme =ThemeData(
    primarySwatch: Colors.pink,
    accentColor: Colors.amber,
    canvasColor: Color.fromRGBO(255, 254, 222, 1),
    textTheme: TextTheme(
      body1: TextStyle(fontSize: bodyFontSize),
      display1: TextStyle(fontSize: smallFontSize,color: Colors.black),
      display2: TextStyle(fontSize: normalFontSize,color: Colors.black),
      display3: TextStyle(fontSize: largeFontSize,color: Colors.black),
      display4: TextStyle(fontSize: xlargeFontSize,color: Colors.black,fontWeight: FontWeight.bold),
  )
  );


  //3.暗黑模式
  static final ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.grey,
      textTheme: TextTheme(
          body1: TextStyle(fontSize: normalFontSize,color: darkTextColors)
      )
  );
}