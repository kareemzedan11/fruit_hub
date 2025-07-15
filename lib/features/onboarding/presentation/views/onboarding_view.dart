import 'package:flutter/material.dart';
import 'package:fruithub/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
static const String onboardingView = 'onboarding';
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: OnboardingViewBody()),
    );
  }
}