import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pal_report/core/theme/app_colors.dart';

class ToastHelper {
  // Display a Toast message
  static void showToast({
    required String message,
    ToastType type = ToastType.info,
    ToastGravity gravity = ToastGravity.BOTTOM,
    Duration duration = const Duration(seconds: 2),
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity,
      timeInSecForIosWeb: duration.inSeconds,
      backgroundColor: _getToastBackgroundColor(type),
      textColor: Colors.white,
      fontSize: 14.0,
    );
  }

  // Get the background color based on the ToastType
  static Color _getToastBackgroundColor(ToastType type) {
    switch (type) {
      case ToastType.success:
        return AppColors.successGreen;
      case ToastType.error:
        return AppColors.errorRed;
      case ToastType.warning:
        return AppColors.warningYellow;
      default:
        return AppColors.infoBlue;
    }
  }
}

// Enum to define Toast Types
enum ToastType { success, error, warning, info }
