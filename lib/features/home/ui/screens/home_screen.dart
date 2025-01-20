import 'package:flutter/material.dart';
import 'package:pal_report/core/helpers/extensions.dart';
import 'package:pal_report/core/helpers/shared_pref_helper.dart';
import 'package:pal_report/features/auth/routes/auth_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Clear all saved data
          SharedPrefHelper.clearAllData();
          SharedPrefHelper.clearAllSecuredData();

          // Navigate to login screen and remove all other screens
          context.name(
            AuthRoutes.auth, // login route name
            predicate: (Route<dynamic> route) => false, // Remove all routes
          );
        },
        child: const Icon(Icons.logout),
      ),
    );
  }
}
