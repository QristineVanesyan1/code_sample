import 'package:flutter/material.dart';

import 'configs.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          backgroundColor: AppColors.textPrimary,
          centerTitle: true,
          titleTextStyle: mediumBold),
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.textPrimary,
      ),
      scaffoldBackgroundColor: AppColors.accentPrimary,
      textTheme: const TextTheme(
          headlineLarge: mediumBold,
          headlineMedium: mediumBold,
          titleLarge: mediumBold,
          displayLarge: mediumBold,
          displayMedium: mediumBold,
          displaySmall: mediumBold,
          labelLarge: mediumBold,
          labelSmall: mediumBold),
    );
  }
}
