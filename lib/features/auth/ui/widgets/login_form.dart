import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pal_report/core/helpers/spacing_extension.dart';
import 'package:pal_report/core/theme/app_text_styles.dart';

import 'package:pal_report/core/widgets/gradient_button.dart';

import '../../logic/cubit/login_cubit.dart';
import 'inputs_form_validation.dart';
import 'login_bloc_listener.dart';
import 'social_media_buttons.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const InputsFormValidation(),
          50.spacingVertical,
          GradientButton(
            onPressed: () {
              // * Login IN
              validateThenDoLogin(context);
            },
            text: 'Login',
          ),
          30.spacingVertical,
          Text(
            'OR',
            style: AppTextStyles.body14GrayRegular,
          ),
          30.spacingVertical,
          const SocialMediaButtons(),
          const LoginBlocListener(),
        ],
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().loginFormKey.currentState!.validate()) {
      context.read<LoginCubit>().login();
    }
  }
}
