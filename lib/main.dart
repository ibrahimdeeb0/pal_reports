import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pal_report/core/helpers/extensions.dart';
import 'package:pal_report/features/auth/auth_routes.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/constants/shared_pref_keys.dart';
import 'features/home/home_routes.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // setup Dependencies
  setupGetIt();

  // Ensure flutter_screenutil works correctly in release mode.
  await ScreenUtil.ensureScreenSize();

  // Check login status
  String initialRoute = await getInitialRoute();

  runApp(
    MyApp(initialRoute: initialRoute),
  );
}

Future<String> getInitialRoute() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);

  // Return the initial route based on login status
  return !(userToken.isNullOrEmpty()) ? HomeRoutes.homeScreen : AuthRoutes.auth;
}
