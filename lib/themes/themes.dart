import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData blueTheme = ThemeData(
    brightness: Brightness.light,  // Solo tema claro
    scaffoldBackgroundColor: const Color(0xFFE1F5FE),  // Fondo azul suave, tirando a gris
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0288D1),  // Azul más llamativo para el AppBar
      foregroundColor: Colors.white,  // Texto blanco en el AppBar
    ),
  );
}
