import 'package:flutter/material.dart';
import 'color_pallete.dart';

class CustomText {
  CustomText._();
  static TextStyle titles = const TextStyle(
      color: Color(ColorPallete.title), fontWeight: FontWeight.bold);
  static TextStyle subTitles = const TextStyle(
      color: Color(ColorPallete.subTitle), fontWeight: FontWeight.w300);
}

class CustomTheme {
  CustomTheme._();

  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: const Color(ColorPallete.primary),
    textTheme: TextTheme(
      displayLarge: CustomText.titles,
      displayMedium: CustomText.subTitles,
      displaySmall: CustomText.titles,
      bodyLarge: CustomText.titles,
      bodyMedium: CustomText.subTitles,
      bodySmall: CustomText.titles,
      headlineLarge: CustomText.titles,
      headlineMedium: CustomText.subTitles,
      headlineSmall: CustomText.titles,
    ),
  );
}
