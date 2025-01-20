import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pal_report/core/networking/api_error_model.dart';

import '../../data/models/auth_response.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  // * Login
  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSuccess(AuthResponseModel loginResponse) =
      LoginSuccess;
  const factory LoginState.loginError(ApiErrorModel apiErrorModel) = LoginError;

  // * Register
  const factory LoginState.registerLoading() = RegisterLoading;
  const factory LoginState.registerSuccess(AuthResponseModel loginResponse) =
      RegisterSuccess;
  const factory LoginState.registerError(ApiErrorModel apiErrorModel) =
      RegisterError;
}
