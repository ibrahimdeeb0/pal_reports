import 'package:dio/dio.dart';

import '../models/auth_response.dart';
import 'auth_api_constants.dart';

/// Abstract class defines the contract
abstract class AuthApiService {
  /// Factory constructor to provide the implementation
  factory AuthApiService(Dio dio) = _AuthApiServiceImpl;

  Future<AuthResponseModel> login({
    required String email,
    required String password,
  });

  Future<AuthResponseModel> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  });
}

/// Concrete implementation of LoginApiService
class _AuthApiServiceImpl implements AuthApiService {
  final Dio dio;

  _AuthApiServiceImpl(this.dio);

  @override
  Future<AuthResponseModel> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        AuthApiConstants.login,
        data: {
          'email': email,
          'password': password,
        },
      );
      return AuthResponseModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthResponseModel> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final response = await dio.post(
        AuthApiConstants.register,
        data: {
          'name': name,
          'email': email,
          'password': password,
          'password_confirmation': confirmPassword,
        },
      );
      return AuthResponseModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
