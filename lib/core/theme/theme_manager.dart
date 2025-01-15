import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/general_constants.dart';
import 'app_fonts.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class ThemeManager {
  // Light Theme
  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        fontFamily: AppFonts.inter,
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.mainBlue,
          brightness: Brightness.light,
        ),
        primaryColor: AppColors.mainBlue,
        scaffoldBackgroundColor: AppColors.lightBlue,
        appBarTheme: _dynamicAppBarTheme(Colors.white),
        textTheme: _textTheme(AppColors.darkBlue),
        buttonTheme: _buttonTheme(),
        elevatedButtonTheme: _elevatedButtonTheme(),
        outlinedButtonTheme: _outlinedButtonTheme(),
        inputDecorationTheme: _inputDecorationTheme(),
        snackBarTheme: _snackBarTheme(AppColors.mainBlue),
        dialogTheme: _dialogTheme(AppColors.lightBlue),
        tabBarTheme: _tabBarTheme(AppColors.mainBlue, AppColors.gray),
        cardTheme: _cardTheme(AppColors.backgroundPrimary),
        dividerColor: AppColors.borderGray,
      );

  // Dark Theme
  static ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        fontFamily: AppFonts.inter,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.mainBlue,
          brightness: Brightness.dark,
        ),
        primaryColor: AppColors.darkBlue,
        scaffoldBackgroundColor: AppColors.lighterBlack,
        appBarTheme: _dynamicAppBarTheme(AppColors.darkBlue),
        textTheme: _textTheme(AppColors.lightGray),
        buttonTheme: _buttonTheme(),
        inputDecorationTheme: _inputDecorationTheme(),
        snackBarTheme: _snackBarTheme(AppColors.darkBlue),
        dialogTheme: _dialogTheme(AppColors.lighterBlack),
        tabBarTheme: _tabBarTheme(AppColors.darkBlue, AppColors.lightGray),
        cardTheme: _cardTheme(AppColors.darkBlue),
        dividerColor: AppColors.borderGray,
      );

  // AppBar Theme
  static AppBarTheme _dynamicAppBarTheme(Color backgroundColor) {
    return AppBarTheme(
      backgroundColor: backgroundColor,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.darkBlue),
      titleTextStyle: AppTextStyles.body18DarkBlueSemiBold,
    );
  }

  // Text Theme
  static TextTheme _textTheme(Color primaryTextColor) => TextTheme(
        displayLarge:
            AppTextStyles.heading32BlueBold.copyWith(color: primaryTextColor),
        headlineLarge:
            AppTextStyles.heading24BlackBold.copyWith(color: primaryTextColor),
        headlineMedium:
            AppTextStyles.heading24BlueBold.copyWith(color: primaryTextColor),
        bodyLarge:
            AppTextStyles.body18DarkBlueBold.copyWith(color: primaryTextColor),
        bodyMedium: AppTextStyles.body14DarkBlueRegular
            .copyWith(color: primaryTextColor),
        bodySmall:
            AppTextStyles.body14GrayRegular.copyWith(color: primaryTextColor),
        titleLarge:
            AppTextStyles.body18WhiteSemiBold.copyWith(color: primaryTextColor),
        titleMedium: AppTextStyles.caption13GrayRegular
            .copyWith(color: primaryTextColor),
        labelLarge: AppTextStyles.button16WhiteSemiBold,
        labelMedium: AppTextStyles.button14BlueSemiBold,
      );

  // Button Theme
  static ButtonThemeData _buttonTheme() => ButtonThemeData(
        buttonColor: AppColors.mainBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        ),
        textTheme: ButtonTextTheme.primary,
      );

  //ElevatedButtonThemeData
  static ElevatedButtonThemeData _elevatedButtonTheme() =>
      const ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.mainBlue),
          // shape: WidgetStatePropertyAll(
          //   RoundedRectangleBorder(
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(kDefaultBorderRadius),
          //     ),
          //   ),
          // ),
        ),
      );

  static OutlinedButtonThemeData _outlinedButtonTheme() =>
      OutlinedButtonThemeData(
        style: ButtonStyle(
          textStyle: WidgetStatePropertyAll(
            AppTextStyles.button14BlueSemiBold,
          ),
          side: WidgetStatePropertyAll(
            BorderSide(color: AppColors.mainBlue, width: 1.3.w),
          ),
        ),
      );

  // Input Decoration Theme
  static InputDecorationTheme _inputDecorationTheme() => InputDecorationTheme(
        border: const UnderlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: AppColors.borderGray, width: 1.3),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: AppColors.borderGray, width: 1.3),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: AppColors.mainBlue, width: 1.5),
        ),
        hintStyle: AppTextStyles.body14GrayRegular,
      );

  // SnackBar Theme
  static SnackBarThemeData _snackBarTheme(Color backgroundColor) =>
      SnackBarThemeData(
        backgroundColor: backgroundColor,
        contentTextStyle:
            AppTextStyles.body14DarkBlueBold.copyWith(color: Colors.white),
        actionTextColor: Colors.white,
        behavior: SnackBarBehavior.floating,
      );

  // Dialog Theme
  static DialogTheme _dialogTheme(Color backgroundColor) => DialogTheme(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDialogBorderRadius),
        ),
        titleTextStyle: AppTextStyles.heading24BlackBold,
        contentTextStyle: AppTextStyles.body14DarkBlueRegular,
      );

  // TabBar Theme
  static TabBarTheme _tabBarTheme(Color selectedColor, Color unselectedColor) =>
      TabBarTheme(
        labelColor: selectedColor,
        unselectedLabelColor: unselectedColor,
        labelStyle: AppTextStyles.body14DarkBlueBold,
        unselectedLabelStyle: AppTextStyles.body14GrayRegular,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: selectedColor, width: 2.0.w),
        ),
      );

  // Card Theme
  static CardTheme _cardTheme(Color backgroundColor) => CardTheme(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        ),
        elevation: 4.0,
      );
}
