import 'package:flutter/material.dart';

class BankingCloneTheme {
  static final instance = BankingCloneTheme._();

  BankingCloneTheme._();
  ThemeData get lightTheme => _lightTheme;
  ThemeData get darkTheme => _darkTheme;

  final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      centerTitle: true,
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    
  );

  final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      centerTitle: true,
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: Colors.grey,
  );
}
