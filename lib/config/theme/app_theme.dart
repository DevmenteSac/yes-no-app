import 'package:flutter/material.dart';

Color _customColor = Color(0xff49199f);

List<Color> _colorThemes = [
  _customColor,
  Colors.yellow,
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.lightBlueAccent,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length,
            "Color must be between 0 and ${_colorThemes.length - 1}");

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
