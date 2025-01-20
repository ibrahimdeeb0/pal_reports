import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pal_report/core/helpers/spacing_extension.dart';
import 'package:pal_report/core/theme/app_colors.dart';
import 'package:pal_report/core/theme/app_text_styles.dart';

import '../../logic/cubit/login_cubit.dart';
import 'login_form.dart';
import 'register_form.dart';

class AuthFormContainer extends StatelessWidget {
  const AuthFormContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    context.read<LoginCubit>().authTabController = _tabController;
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose TabController when widget is destroyed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              50.spacingVertical,
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
                  controller: _tabController,
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
                  onTap: (value) {
                    // * Clear the form
                    // Clear inputs and update tab index
                    context.read<LoginCubit>().changeTabIndex(value);
                    context.read<LoginCubit>().clearInputsForm();
                  },
                ),
              ),
              30.spacingVertical,
              // * TabBarView
                Expanded(
                child: TabBarView(
                  controller: _tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
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
