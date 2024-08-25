import 'package:coffee/core/routing/routes.dart';
import 'package:coffee/features/home/home_screen.dart';
import 'package:coffee/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.OnBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case Routes.HomeScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route here ' + settings.name.toString()),
            ),
          ),
        );
    }
  }
}
