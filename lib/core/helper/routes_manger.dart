import 'package:flutter/material.dart';
import 'package:fruithub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruithub/features/splash/presentation/views/splash_view.dart';

class RoutesManger {
  static Route<dynamic> route(RouteSettings settings) {
    switch (settings.name) {
      case SplashView.splashView:
        return MaterialPageRoute(builder: (_) => const SplashView());
   case OnboardingView.onboardingView:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('No route found')),
          ),
        );
    }
  }
}
