import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruithub/constant.dart';
import 'package:fruithub/core/utils/routes_manger.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/features/auth/presentation/views/login_view.dart';
import 'package:fruithub/features/onboarding/presentation/views/widgets/shared_prefrences_singleton.dart';

class PageViewItem extends StatelessWidget {
  PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subTitle,
    required this.title,
    required this.isVisible,
  });
  String image, backgroundImage, subTitle;
  Widget title;
  bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              SvgPicture.asset(
                backgroundImage,
                fit: BoxFit.cover,

                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Center(child: SvgPicture.asset(image)),
              ),

              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    
                    onTap: ()  {
                       SharedPrefsSingleton. setBool(kIsOnBoardingSeen, true) ; 
                      Navigator.of(context).pushReplacementNamed(LoginView.loginView) ;},
                    child: Text("تخط",style: TextStyles.regular13.copyWith(  color: const Color(0xFF949D9E)),)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 65),
        title,
        SizedBox(height: 25),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal:  37.0),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(color: Color(0xFF4E5556)),
          ),
        ),
      ],
    );
  }
}
