import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pal_report/core/helpers/spacing_extension.dart';
import 'package:pal_report/core/theme/app_colors.dart';

import '../widgets/auth_form_container.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        // Remove the default background color
        backgroundColor: Colors.transparent,
        elevation: 0,
        // Add the gradient background
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.mainBlue,
                AppColors.blue,
              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // * Gradient Background
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Container(
                width: double.infinity,
                height: context.screenFlexHeight() * 0.25,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.mainBlue,
                      AppColors.blue,
                    ],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(140.r),
                    bottomLeft: Radius.circular(80.r),
                  ),
                ),
              ),
            ),
            // * AuthForm
            Padding(
              padding: EdgeInsets.only(bottom: 40.h),
              child: const AuthFormContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
