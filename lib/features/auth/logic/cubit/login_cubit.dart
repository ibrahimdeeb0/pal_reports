import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pal_report/core/constants/shared_pref_keys.dart';
import 'package:pal_report/core/helpers/shared_pref_helper.dart';
import 'package:pal_report/core/networking/dio_factory.dart';
import 'package:pal_report/features/auth/data/repo/auth_repo.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo authnRepo;
  LoginCubit(this.authnRepo) : super(const LoginState.initial());

  int tabIndex = 0;
  bool isLogin = true;
  bool isRegister = false;

  late TabController authTabController;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  Future<void> login() async {
    emit(const LoginState.loginLoading());
    final result = await authnRepo.loginRequest(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
    result.when(
      success: (loginResponse) async {
        await saveUserToken(loginResponse.token);
        emit(LoginState.loginSuccess(loginResponse));
      },
      failure: (error) {
        emit(LoginState.loginError(error));
      },
    );
  }

  Future<void> register() async {
    emit(const LoginState.registerLoading());
    final result = await authnRepo.registerRequest(
      name: nameController.text.trim(),
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
      confirmPassword: confirmPasswordController.text.trim(),
    );
    result.when(
      success: (authResponse) async {
        emit(LoginState.registerSuccess(authResponse));
      },
      failure: (error) {
        emit(LoginState.registerError(error));
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }

  void changeTabIndex(int index) {
    if (tabIndex != index) {
      tabIndex = index;

      // Update the TabController index
      authTabController.animateTo(index);

      // Update isLogin and isRegister flags
      isLogin = index == 0;
      isRegister = index == 1;
    }
  }

  void clearInputsForm() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }
}
