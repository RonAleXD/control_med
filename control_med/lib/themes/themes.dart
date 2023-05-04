import 'package:control_med/themes/theme_colors.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  appBarTheme:  AppBarTheme(color: lightColorScheme.primary),
  useMaterial3: true,
  colorScheme: lightColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style:ElevatedButton.styleFrom(backgroundColor:lightColorScheme.secondaryContainer ),
  ),
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: lightColorScheme.secondaryContainer),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
);
