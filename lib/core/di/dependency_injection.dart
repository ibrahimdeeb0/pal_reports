import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:pal_report/features/auth/data/apis/auth_api_services.dart';
import 'package:pal_report/features/auth/data/repo/auth_repo.dart';
import 'package:pal_report/features/auth/logic/cubit/login_cubit.dart';

import '../helpers/app_logger.dart';
import '../navigation/app_navigator_observer.dart';
import '../navigation/app_router.dart';
import '../networking/api_constants.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.registerSingleton<AppNavigatorObserver>(AppNavigatorObserver());

  // Logger
  getIt.registerLazySingleton<AppLogger>(
    () => AppLogger(
      enableLogging: true,
      minimumLogLevel: Level.debug,
      customOutput: MultiOutput([
        DeveloperConsoleOutput(),
      ]),
    ),
  );

  // * Dio Instance
  // Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<Dio>(
      () => DioFactory.getDio(ApiConstants.apiBaseUrl));

  // * login
  // LoginApiService
  getIt.registerLazySingleton<AuthApiService>(
      () => AuthApiService(getIt<Dio>()));
  // LoginRepo
  getIt
      .registerLazySingleton<AuthRepo>(() => AuthRepo(getIt<AuthApiService>()));
  // LoginCubit
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<AuthRepo>()));
}
