import 'package:flutter/material.dart';
import 'package:fruithub/features/auth/presentation/views/forget_password_view.dart';
import 'package:fruithub/features/auth/presentation/views/login_view.dart';
import 'package:fruithub/features/auth/presentation/views/reset_password_view.dart';
import 'package:fruithub/features/auth/presentation/views/signup_view.dart';
import 'package:fruithub/features/auth/presentation/views/verify_password_veiw.dart';
import 'package:fruithub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruithub/features/splash/presentation/views/splash_view.dart';

class RoutesManger {
  static Route<dynamic> route(RouteSettings settings) {
    switch (settings.name) {
      case SplashView.splashView:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case OnboardingView.onboardingView:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case LoginView.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
              case SignupView.signup:
        return MaterialPageRoute(builder: (_) => const SignupView());
        case ForgetPasswordView.forget_password:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
             case VerifyPasswordVeiw.verify_password:
        return MaterialPageRoute(builder: (_) => const VerifyPasswordVeiw());
                     case ResetPasswordView.reset_password:
        return MaterialPageRoute(builder: (_) => const ResetPasswordView());
      default:
        return MaterialPageRoute(
          builder:
              (_) =>
                  const Scaffold(body: Center(child: Text('No route found'))),
        );
    }
  }
}
