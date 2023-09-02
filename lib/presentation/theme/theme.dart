import 'package:flutter/material.dart';
import 'color_pallete.dart';

class CustomText {
  CustomText._();
  static TextStyle titles = const TextStyle(color: Color(ColorPallete.title));
  static TextStyle subTitles =
      const TextStyle(color: Color(ColorPallete.subTitle));
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
        bodySmall: CustomText.titles),
  );
}
