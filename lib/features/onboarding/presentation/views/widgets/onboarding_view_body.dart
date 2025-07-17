import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/constant.dart';
import 'package:fruithub/core/utils/colors_manager.dart';
import 'package:fruithub/core/widgets/custom_botton.dart';
import 'package:fruithub/features/auth/presentation/views/login_view.dart';
 
import 'package:fruithub/features/onboarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:fruithub/features/onboarding/presentation/views/widgets/shared_prefrences_singleton.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}
class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
             currentPage = pageController.page!.round();
                 setState(() {});
    });
 
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          position: 0,
          decorator: DotsDecorator(
            activeColor: ColorsManager.primaryColor,
            color:
                currentPage == 0
                    ? ColorsManager.primaryColor.withOpacity(.5)
                    : ColorsManager.primaryColor,
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            spacing: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
        ),
        SizedBox(height: 29),
        Padding(
          padding: const EdgeInsets.all(kHorizentailPadding),
          child: Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: currentPage == 1,    
            child: CustomBotton(title: "ابدأ الان", ontap: () {
                                     SharedPrefsSingleton. setBool(kIsOnBoardingSeen, true) ; 
                Navigator.of(context).pushReplacementNamed(LoginView.loginView);
            }),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}