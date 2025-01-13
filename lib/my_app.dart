import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/navigation/app_navigator_observer.dart';
import 'core/navigation/app_router.dart';
import 'core/theme/theme_manager.dart';

class MyApp extends StatelessWidget {
  final String initialRoute;
  const MyApp({
    super.key,
    required this.initialRoute,
  });

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    final navigatorObserver = getIt<AppNavigatorObserver>();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'PalReport',
          debugShowCheckedModeBanner: false,
          theme: ThemeManager.lightTheme,
          darkTheme: ThemeManager.darkTheme,
          themeMode: ThemeMode.light,
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: initialRoute,
          navigatorObservers: [navigatorObserver],
        );
      },
    );
  }
}
