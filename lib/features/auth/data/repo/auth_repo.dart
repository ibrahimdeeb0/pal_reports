import 'package:pal_report/core/networking/api_error_handler.dart';
import 'package:pal_report/core/networking/api_result.dart';

import '../apis/auth_api_services.dart';
import '../models/auth_response.dart';

class AuthRepo {
  final AuthApiService _loginApiService;

  AuthRepo(this._loginApiService);

  Future<ApiResult<AuthResponseModel>> loginRequest({
    required String email,
    required String password,
  }) async {
    try {
      // Call the API service for login
      final response = await _loginApiService.login(
        email: email,
        password: password,
      );

      // Wrap the successful response in ApiResult.success
      return ApiResult.success(response);
    } catch (error) {
      // Parse and wrap the error in ApiResult.failure
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<AuthResponseModel>> registerRequest({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      // Call the API service for register
      final response = await _loginApiService.register(
        name: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
      );

      // Wrap the successful response in ApiResult.success
      return ApiResult.success(response);
    } catch (error) {
      // Parse and wrap the error in ApiResult.failure
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
