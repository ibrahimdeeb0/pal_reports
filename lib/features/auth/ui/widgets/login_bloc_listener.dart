import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pal_report/core/helpers/extensions.dart';
import 'package:pal_report/core/helpers/toast_helper.dart';
import 'package:pal_report/core/networking/api_error_model.dart';
import 'package:pal_report/features/home/home_routes.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginSuccess ||
          current is LoginError,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.mainBlue,
                ),
              ),
            );
          },
          loginSuccess: (loginResponse) {
            context.pop();
            context.pushReplacementNamed(HomeRoutes.homeScreen);
            // Show a success toast
            ToastHelper.showToast(
              message: 'Login has been successfully.',
              type: ToastType.success,
              gravity: ToastGravity.TOP,
            );
          },
          loginError: (apiErrorModel) {
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          apiErrorModel.getAllErrorMessages(),
          style: AppTextStyles.body14DarkBlueBold,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: AppTextStyles.button14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
