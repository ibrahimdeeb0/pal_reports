import 'package:flutter/material.dart';

class AppNavigatorObserver extends NavigatorObserver {
  String? currentRoute;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    currentRoute = route.settings.name;
    super.didPush(route, previousRoute);
  }
}
  
  // The  AppNavigatorObserver  class extends the  NavigatorObserver  class and overrides the  didPush  method. This method is called whenever a new route is pushed onto the navigator. The  currentRoute  property is updated with the name of the current route. 
  // Step 3: Implement the AppRouter class 
  // The  AppRouter  class is responsible for generating routes based on the route settings. 
  // Create a new file named  app_router.dart  in the  lib/core/navigation  directory and add the following code:
  
  