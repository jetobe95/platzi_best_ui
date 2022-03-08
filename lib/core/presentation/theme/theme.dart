import 'package:flutter/material.dart';
import 'package:platzi_best_ui/core/presentation/res/colors.dart';

final ThemeData materialTheme = ThemeData(
  primaryColor: UIColors.atlantis,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(
      color: Colors.white,
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: UIColors.atlantis,
    onPrimary: Colors.white,
    onSecondary: UIColors.atlantis,
  ),
  scaffoldBackgroundColor: UIColors.blueZodiac,
);
