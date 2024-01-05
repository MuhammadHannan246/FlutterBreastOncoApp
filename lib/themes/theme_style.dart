import 'package:flutter/material.dart';
import 'package:breast_onco/themes/colors.dart';

class ThemeStyle {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: kLightColor,
      iconTheme: IconThemeData(color: kPrimarySwatchColor),
      foregroundColor: kPrimarySwatchColor,
      surfaceTintColor: kLightColor,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kPrimarySwatchColor),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        // Don't edit backgroundColor, foregroundColor
        backgroundColor: MaterialStateProperty.all(kSecondarySwatchColor.shade100),
        foregroundColor: MaterialStateProperty.all(kSecondarySwatchColor),
      ),
    ),
    menuButtonTheme: MenuButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kPrimarySwatchColor),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kPrimarySwatchColor),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kSecondarySwatchColor),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kLightColor),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: kPrimarySwatchColor),
        ),
      ),
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kPrimarySwatchColor),
      ),
    ),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: kLightColor,
      todayBackgroundColor: MaterialStatePropertyAll(kSecondarySwatchColor),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kPrimarySwatchColor),
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateColor.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return kPrimarySwatchColor;
          }
          return kTextColor;
        },
      ),
    ),
    scaffoldBackgroundColor: kLightColor,
    primarySwatch: kPrimarySwatchColor,
    dialogBackgroundColor: kLightColor,
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: kLightColor),
    textTheme: TextTheme(
      displayLarge: TextStyle(fontFamily: 'Montserrat', color: kPrimarySwatchColor),
      displayMedium: TextStyle(fontFamily: 'Montserrat', color: kPrimarySwatchColor),
      displaySmall: TextStyle(fontFamily: 'Montserrat', color: kPrimarySwatchColor),
      // Don't edit
      headlineLarge: TextStyle(fontFamily: 'Montserrat', color: kPrimarySwatchColor, fontSize: 26.0),
      // Don't edit
      headlineMedium: TextStyle(fontFamily: 'Montserrat', color: kSecondarySwatchColor.shade700, fontSize: 20),
      // Don't edit
      headlineSmall: TextStyle(fontFamily: 'Montserrat', color: kSecondarySwatchColor.shade700, fontSize: 22),
      titleLarge: TextStyle(fontFamily: 'Montserrat', color: kPrimarySwatchColor),
      titleMedium: TextStyle(fontFamily: 'Montserrat', color: kPrimarySwatchColor),
      titleSmall: TextStyle(fontFamily: 'Montserrat', color: kPrimarySwatchColor),
      // Don't edit
      bodyLarge: const TextStyle(fontFamily: 'Montserrat'),
      bodyMedium: TextStyle(fontFamily: 'Montserrat', color: kPrimarySwatchColor),
      bodySmall: TextStyle(fontFamily: 'Montserrat', color: kPrimarySwatchColor),
      labelLarge: TextStyle(fontFamily: 'Montserrat', color: kPrimarySwatchColor),
      labelMedium: TextStyle(fontFamily: 'Montserrat', color: kPrimarySwatchColor),
      labelSmall: TextStyle(fontFamily: 'Montserrat', color: kPrimarySwatchColor),
    ),
  );
}
