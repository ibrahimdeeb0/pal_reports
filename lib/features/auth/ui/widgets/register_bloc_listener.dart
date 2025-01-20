import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pal_report/core/helpers/extensions.dart';
import 'package:pal_report/core/helpers/toast_helper.dart';
import 'package:pal_report/core/networking/api_error_model.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is RegisterLoading ||
          current is RegisterSuccess ||
          current is RegisterError,
      listener: (context, state) {
        state.whenOrNull(
          registerLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.mainBlue,
                ),
              ),
            );
          },
          registerSuccess: (registerResponse) {
            //
            context.read<LoginCubit>().clearInputsForm();
            context.read<LoginCubit>().changeTabIndex(0);
            // close the Dialog
            context.pop();
            // Show a success toast
            ToastHelper.showToast(
              message: 'Registration has been completed successfully.',
              type: ToastType.success,
              gravity: ToastGravity.TOP,
            );
          },
          registerError: (apiErrorModel) {
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
