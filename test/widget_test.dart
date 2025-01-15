// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pal_report/core/constants/shared_pref_keys.dart';
import 'package:pal_report/core/helpers/extensions.dart';
import 'package:pal_report/core/helpers/shared_pref_helper.dart';
import 'package:pal_report/features/auth/routes/auth_routes.dart';
import 'package:pal_report/features/home/home_routes.dart';
import 'package:pal_report/my_app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Check login status
    String initialRoute = await getInitialRoute();
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MyApp(initialRoute: initialRoute),
    );

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

Future<String> getInitialRoute() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);

  // Return the initial route based on login status
  return !(userToken.isNullOrEmpty()) ? HomeRoutes.homeScreen : AuthRoutes.auth;
}
