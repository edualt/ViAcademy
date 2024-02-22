import 'package:academy/utils/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    //TODO: Crear archivo de colores con la paleta de colores
    primaryColor: const Color(0xFF4554DE),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTheme,
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      //TODO: Crear archivo de colores con la paleta de colores
      primaryColor: const Color(0xFF4554DE),
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTheme,
  );
}
