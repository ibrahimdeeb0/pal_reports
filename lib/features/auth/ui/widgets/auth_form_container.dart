import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pal_report/core/helpers/spacing_extension.dart';
import 'package:pal_report/core/theme/app_colors.dart';
import 'package:pal_report/core/theme/app_text_styles.dart';

import 'login_form.dart';
import 'register_form.dart';

class AuthFormContainer extends StatelessWidget {
  const AuthFormContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenFlexHeight() * 0.75,
      width: context.screenFlexWidth(),
      margin: EdgeInsets.symmetric(horizontal: 22.w),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.r)),
      ),
      child: const AuthForm(),
    );
  }
}

class AuthForm extends StatelessWidget {
  const AuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              40.spacingVertical,
              // * TabBar
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: AppColors.borderGray,
                  ),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  labelStyle: AppTextStyles.tabBarTextStyle,
                  unselectedLabelColor: AppColors.mainBlue,
                  unselectedLabelStyle: AppTextStyles.tabBarTextStyle,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: AppColors.mainBlue,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  dividerColor: AppColors.lightGray,
                  dividerHeight: 0.0,
                  tabs: const [
                    Tab(text: 'Log In'),
                    Tab(text: 'Sign Up'),
                  ],
                ),
              ),
              30.spacingVertical,
              // * TabBarView
              const Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    LogInForm(),
                    SignUpForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
