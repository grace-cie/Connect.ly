import 'package:connectly/core/utils/custom_color.dart';
import 'package:flutter/material.dart';

final Map<String, List<dynamic>> theme = <String, List<dynamic>>{
  'brightness': <dynamic>[
    Brightness.light,
    Brightness.dark,
  ],
  'primaryColor': <dynamic>[
    CustomColor.instagramDarkBlue,
    CustomColor.instagramBlack,
  ],
  'primaryColorLight': <dynamic>[
    CustomColor.instagramLightBlue,
    CustomColor.instagramDarkGrey,
  ],
  'primaryColorDark': <dynamic>[
    CustomColor.instagramDarkBlue,
    CustomColor.instagramBlack,
  ],
  'canvasColor': <dynamic>[
    CustomColor.instagramWhite,
    CustomColor.instagramDarkGrey,
  ],
  'highlightColor': <dynamic>[
    CustomColor.instagramLightGrey,
    CustomColor.instagramWhite,
  ],
  'textTheme': <dynamic>[
    /// light
    const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: CustomColor.instagramBlack,
      ),
      headlineMedium: TextStyle(
        color: CustomColor.instagramDarkBlue,
      ),
      headlineLarge: TextStyle(
        color: CustomColor.instagramDarkGrey,
      ),
      bodySmall: TextStyle(
        color: CustomColor.instagramDarkGrey,
      ),
      bodyMedium: TextStyle(
        color: CustomColor.instagramLightGrey,
      ),
    ),

    /// dark
    const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: CustomColor.instagramWhite,
      ),
      headlineMedium: TextStyle(
        color: CustomColor.instagramWhite,
      ),
      headlineLarge: TextStyle(
        color: CustomColor.instagramWhite,
      ),
      bodySmall: TextStyle(
        color: CustomColor.instagramLightGrey,
      ),
      bodyMedium: TextStyle(
        color: CustomColor.instagramYellow,
      ),
    ),
  ],
  'primaryTextTheme': <dynamic>[
    /// light
    const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: CustomColor.instagramBlack,
      ),
      bodySmall: TextStyle(
        color: CustomColor.instagramBlack,
      ),
    ),

    /// dark
    const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: CustomColor.instagramWhite,
      ),
      bodySmall: TextStyle(
        color: CustomColor.instagramWhite,
      ),
    ),
  ],
  'dividerTheme': <dynamic>[
    const DividerThemeData(
        color: CustomColor.instagramDarkGrey, thickness: 1.0),
    const DividerThemeData(
        color: CustomColor.instagramLightGrey, thickness: 2.0),
  ],
  'toggleButtonsTheme': <dynamic>[
    /// light
    const ToggleButtonsThemeData(
      borderColor: CustomColor.instagramDarkGrey,
      color: CustomColor.instagramDarkBlue,
      textStyle: TextStyle(color: CustomColor.instagramWhite),
    ),

    /// dark
    const ToggleButtonsThemeData(
      borderColor: CustomColor.instagramWhite,
      color: CustomColor.instagramYellow,
      textStyle: TextStyle(color: CustomColor.instagramDarkBlue),
    ),
  ],
  'buttonTheme': <dynamic>[
    const ButtonThemeData(
      colorScheme: ColorScheme.dark(background: CustomColor.instagramYellow),
    ),
    const ButtonThemeData(
      colorScheme: ColorScheme.dark(background: CustomColor.instagramDarkBlue),
    ),
  ],
  'radioTheme': <dynamic>[
    RadioThemeData(
      fillColor:
          MaterialStateProperty.all<Color>(CustomColor.instagramDarkBlue),
    ),
    RadioThemeData(
      fillColor: MaterialStateProperty.all<Color>(CustomColor.instagramYellow),
    ),
  ],
  'snackBarTheme': <dynamic>[
    const SnackBarThemeData(
      backgroundColor: CustomColor.instagramDarkGrey,
      contentTextStyle: TextStyle(color: CustomColor.instagramWhite),
      actionTextColor: CustomColor.instagramDarkBlue,
    ),
    const SnackBarThemeData(
      backgroundColor: CustomColor.instagramDarkGrey,
      contentTextStyle: TextStyle(color: CustomColor.instagramWhite),
      actionTextColor: CustomColor.instagramDarkBlue,
    ),
  ],
  'iconTheme': <dynamic>[
    const IconThemeData(
      color: CustomColor.instagramBlack,
    ),
    const IconThemeData(
      color: CustomColor.instagramWhite,
    ),
  ],
  'cardTheme': <dynamic>[
    const CardTheme(
      color: CustomColor.instagramWhite,
    ),
    const CardTheme(
      color: CustomColor.instagramDarkGrey,
    ),
  ],
  'primaryIconTheme': <dynamic>[
    const IconThemeData(
      color: CustomColor.instagramLightGrey,
    ),
    const IconThemeData(
      color: CustomColor.instagramWhite,
    ),
  ],
  'hintColor': <dynamic>[
    CustomColor.instagramDarkGrey,
    CustomColor.instagramWhite,
  ],
  'bottomNavigationBarTheme': <dynamic>[
    const BottomNavigationBarThemeData(
      backgroundColor: CustomColor.instagramWhite,
      selectedItemColor: CustomColor.instagramDarkBlue,
      unselectedItemColor: CustomColor.instagramLightGrey,
    ),
    const BottomNavigationBarThemeData(
      backgroundColor: CustomColor.instagramDarkGrey,
      selectedItemColor: CustomColor.instagramWhite,
      unselectedItemColor: CustomColor.instagramLightGrey,
    ),
  ],
  'progressIndicatorTheme': <dynamic>[
    const ProgressIndicatorThemeData(
      color: CustomColor.instagramDarkBlue,
    ),
    const ProgressIndicatorThemeData(
      color: CustomColor.instagramWhite,
    ),
  ],
  'floatingActionButtonTheme': <dynamic>[
    const FloatingActionButtonThemeData(
      backgroundColor: CustomColor.instagramDarkBlue,
    ),
    const FloatingActionButtonThemeData(
      backgroundColor: CustomColor.instagramYellow,
    ),
  ],
  'colorScheme': <dynamic>[
    /// light
    const ColorScheme(
      brightness: Brightness.light,
      primary: CustomColor.instagramDarkBlue,
      secondary: CustomColor.instagramPink,
      surface: CustomColor.instagramDarkGrey,
      background: CustomColor.instagramWhite,
      error: CustomColor.instagramOrange,
      onPrimary: CustomColor.instagramWhite,
      onSecondary: CustomColor.instagramWhite,
      onSurface: CustomColor.instagramDarkGrey,
      onBackground: CustomColor.instagramWhite,
      onError: CustomColor.instagramOrange,
    ),

    /// dark
    const ColorScheme(
      brightness: Brightness.dark,
      primary: CustomColor.instagramBlack,
      secondary: CustomColor.instagramPink,
      surface: CustomColor.instagramDarkGrey,
      background: CustomColor.instagramWhite,
      error: CustomColor.instagramOrange,
      onPrimary: CustomColor.instagramBlack,
      onSecondary: CustomColor.instagramWhite,
      onSurface: CustomColor.instagramDarkGrey,
      onBackground: CustomColor.instagramWhite,
      onError: CustomColor.instagramOrange,
    ),
  ],
};

ThemeData appTheme(Brightness brightness) {
  final int index = brightness == Brightness.light ? 0 : 1;

  return ThemeData(
    textSelectionTheme: TextSelectionThemeData(
        selectionColor: theme['primaryColor']![index],
        selectionHandleColor: theme['primaryColor']![index]),
    brightness: theme['brightness']![index],
    primaryColor: theme['primaryColor']![index],
    primaryColorLight: theme['primaryColorLight']![index],
    primaryColorDark: theme['primaryColorDark']![index],
    canvasColor: theme['canvasColor']![index],

    /// border for text field
    highlightColor: theme['highlightColor']![index],

    /// text inside the body
    textTheme: theme['textTheme']![index],

    /// titles
    primaryTextTheme: theme['primaryTextTheme']![index],
    dividerTheme: theme['dividerTheme']![index],
    toggleButtonsTheme: theme['toggleButtonsTheme']![index],
    buttonTheme: theme['buttonTheme']![index],
    snackBarTheme: theme['snackBarTheme']![index],
    iconTheme: theme['iconTheme']![index],
    cardTheme: theme['cardTheme']![index],
    primaryIconTheme: theme['primaryIconTheme']![index],
    hintColor: theme['hintColor']![index],
    bottomNavigationBarTheme: theme['bottomNavigationBarTheme']![index],
    progressIndicatorTheme: theme['progressIndicatorTheme']![index],
    floatingActionButtonTheme: theme['floatingActionButtonTheme']![index],
    radioTheme: theme['radioTheme']![index],
    colorScheme: theme['colorScheme']![index],
  );
}

ThemeData getLightTheme() {
  const int index = 0;

  return ThemeData(
    brightness: theme['brightness']![index],
    primaryColor: theme['primaryColor']![index],
    primaryColorLight: theme['primaryColorLight']![index],
    primaryColorDark: theme['primaryColorDark']![index],
    canvasColor: theme['canvasColor']![index],

    /// border for text field
    highlightColor: theme['highlightColor']![index],

    /// text inside the body
    textTheme: theme['textTheme']![index],

    /// titles
    primaryTextTheme: theme['primaryTextTheme']![index],
    dividerTheme: theme['dividerTheme']![index],
    toggleButtonsTheme: theme['toggleButtonsTheme']![index],
    buttonTheme: theme['buttonTheme']![index],
    snackBarTheme: theme['snackBarTheme']![index],
    iconTheme: theme['iconTheme']![index],
    cardTheme: theme['cardTheme']![index],
    primaryIconTheme: theme['primaryIconTheme']![index],
    hintColor: theme['hintColor']![index],
    bottomNavigationBarTheme: theme['bottomNavigationBarTheme']![index],
    progressIndicatorTheme: theme['progressIndicatorTheme']![index],
    floatingActionButtonTheme: theme['floatingActionButtonTheme']![index],
    radioTheme: theme['radioTheme']![index],
    colorScheme: theme['colorScheme']![index],
  );
}

ThemeData getDarkTheme() {
  const int index = 1;

  return ThemeData(
    brightness: theme['brightness']![index],
    primaryColor: theme['primaryColor']![index],
    primaryColorLight: theme['primaryColorLight']![index],
    primaryColorDark: theme['primaryColorDark']![index],
    canvasColor: theme['canvasColor']![index],

    /// border for text field
    highlightColor: theme['highlightColor']![index],

    /// text inside the body
    textTheme: theme['textTheme']![index],

    /// titles
    primaryTextTheme: theme['primaryTextTheme']![index],
    dividerTheme: theme['dividerTheme']![index],
    toggleButtonsTheme: theme['toggleButtonsTheme']![index],
    buttonTheme: theme['buttonTheme']![index],
    snackBarTheme: theme['snackBarTheme']![index],
    iconTheme: theme['iconTheme']![index],
    cardTheme: theme['cardTheme']![index],
    primaryIconTheme: theme['primaryIconTheme']![index],
    hintColor: theme['hintColor']![index],
    bottomNavigationBarTheme: theme['bottomNavigationBarTheme']![index],
    progressIndicatorTheme: theme['progressIndicatorTheme']![index],
    floatingActionButtonTheme: theme['floatingActionButtonTheme']![index],
    radioTheme: theme['radioTheme']![index],
    colorScheme: theme['colorScheme']![index],
  );
}
