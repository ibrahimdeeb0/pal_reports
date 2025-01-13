import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../helpers/app_logger.dart';
import '../navigation/app_navigator_observer.dart';
import '../navigation/app_router.dart';
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

  // Dio & ApiService
  Dio dio = DioFactory.getDio();

  // login
  // getIt.registerLazySingleton<LoginApiService>(() => LoginApiService(dio));
  // getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
