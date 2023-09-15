
import 'package:flutter/material.dart';

const Color _customColor = Color(0x07943AAB);

const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.green,
  Colors.pink,
  Colors.pinkAccent,
  Colors.yellow,
  Colors.yellowAccent,
  Colors.deepOrange,
  Colors.orange,
];

class AppTheme {

  final int selectorColor;

  AppTheme({this.selectorColor = 0}): assert(selectorColor >= 0 && selectorColor < _colorTheme.length);

  

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectorColor]
    );
  }


}