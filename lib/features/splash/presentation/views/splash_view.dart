import 'package:flutter/material.dart';
import 'package:fruithub/core/helper/routes_manger.dart';
import 'package:fruithub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruithub/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

   static const String splashView = 'splash'; 

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
 
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
 
      Navigator.pushReplacementNamed(context, OnboardingView.onboardingView);
    });
  }
  Widget build(BuildContext context) {
    return   Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: SplashViewBody(),
  
    );
  }
}