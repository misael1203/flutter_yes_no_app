import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5c11d4);
const List<Color> _colorsThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class DefaultTheme {
  final int selectedColor;

  DefaultTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorsThemes.length,
            'selectedColor must be between 0 and ${_colorsThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorsThemes[selectedColor],
      // brightness: Brightness.dark,
    );
  }
}
