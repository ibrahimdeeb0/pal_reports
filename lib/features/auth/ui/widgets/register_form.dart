import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pal_report/core/helpers/spacing_extension.dart';
import 'package:pal_report/core/theme/app_text_styles.dart';
import 'package:pal_report/core/widgets/gradient_button.dart';

import '../../logic/cubit/login_cubit.dart';
import 'inputs_form_validation.dart';
import 'register_bloc_listener.dart';
import 'social_media_buttons.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const InputsFormValidation(),
          50.verticalSpace,
          GradientButton(
            onPressed: () {
              // * Register
              validateThenDoRegister(context);
            },
            text: 'Register',
          ),
          30.spacingVertical,
          Text(
            'OR',
            style: AppTextStyles.body14GrayRegular,
          ),
          30.spacingVertical,
          // * SocialMedia Buttons
          const SocialMediaButtons(),
          const RegisterBlocListener(),
        ],
      ),
    );
  }

  void validateThenDoRegister(BuildContext context) {
    if (context.read<LoginCubit>().registerFormKey.currentState!.validate()) {
      context.read<LoginCubit>().register();
    }
  }
}
