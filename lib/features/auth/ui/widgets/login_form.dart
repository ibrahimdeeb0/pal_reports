import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pal_report/core/helpers/app_logger.dart';
import 'package:pal_report/core/helpers/spacing_extension.dart';
import 'package:pal_report/core/theme/app_colors.dart';
import 'package:pal_report/core/theme/app_text_styles.dart';
import 'package:pal_report/core/widgets/gradient_button.dart';

import 'social_media_buttons.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          20.verticalSpace,
          TextFormField(
            cursorColor: AppColors.mainBlue,
            decoration: const InputDecoration(
              hintText: 'Enter email or username',
            ),
          ),
          20.spacingVertical,
          TextFormField(
            cursorColor: AppColors.mainBlue,
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
          ),
          20.spacingVertical,
          TextFormField(
            cursorColor: AppColors.mainBlue,
            decoration: const InputDecoration(
              hintText: 'Confirm password',
            ),
          ),
          50.spacingVertical,
          GradientButton(
            onPressed: () {
              // * Login IN
              appConsoleLog.info('Login IN');
            },
            text: 'Login In',
          ),
          30.spacingVertical,
          Text(
            'OR',
            style: AppTextStyles.body14GrayRegular,
          ),
          30.spacingVertical,
          // * SocialMedia Buttons
          const SocialMediaButtons(),
        ],
      ),
    );
  }
}
