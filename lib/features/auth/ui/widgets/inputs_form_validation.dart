import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pal_report/core/helpers/app_regex.dart';
import 'package:pal_report/core/helpers/spacing_extension.dart';
import 'package:pal_report/core/theme/app_colors.dart';
import 'package:pal_report/core/theme/app_text_styles.dart';
import 'package:pal_report/features/auth/logic/cubit/login_cubit.dart';

import '../../logic/cubit/login_state.dart';

class InputsFormValidation extends StatelessWidget {
  const InputsFormValidation({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().isLogin
          ? context.read<LoginCubit>().loginFormKey
          : context.read<LoginCubit>().registerFormKey,
      child: Column(
        children: [
          BlocSelector<LoginCubit, LoginState, bool>(
            selector: (state) => context.read<LoginCubit>().isRegister,
            builder: (context, isRegister) {
              return isRegister
                  ? Column(
                      children: [
                        TextFormField(
                          controller: context.read<LoginCubit>().nameController,
                          cursorColor: AppColors.mainBlue,
                          style: AppTextStyles.body14DarkBlueRegular,
                          decoration: const InputDecoration(
                            hintText: 'Enter User Name',
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.length < 6) {
                              return 'Minimum user name character is 6';
                            }
                            return null;
                          },
                        ),
                        20.spacingVertical,
                      ],
                    )
                  : const SizedBox.shrink();
            },
          ),
          TextFormField(
            controller: context.read<LoginCubit>().emailController,
            cursorColor: AppColors.mainBlue,
            style: AppTextStyles.body14DarkBlueRegular,
            decoration: const InputDecoration(
              hintText: 'Enter Email',
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          20.spacingVertical,
          TextFormField(
            controller: context.read<LoginCubit>().passwordController,
            cursorColor: AppColors.mainBlue,
            style: AppTextStyles.body14DarkBlueRegular,
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.hasMinLength(value)) {
                return ' minimum password character is 6';
              }
              return null;
            },
          ),
          20.spacingVertical,
          TextFormField(
            controller: context.read<LoginCubit>().confirmPasswordController,
            cursorColor: AppColors.mainBlue,
            decoration: const InputDecoration(
              hintText: 'Confirm Password',
            ),
            style: AppTextStyles.body14DarkBlueRegular,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  value != context.read<LoginCubit>().passwordController.text) {
                return 'Password does not match';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
