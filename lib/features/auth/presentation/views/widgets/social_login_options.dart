
import 'package:flutter/material.dart';
import 'package:fruithub/core/helper/assets_manager.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/social_login_button.dart';

class SocialLoginOptions extends StatelessWidget {
  const SocialLoginOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialLoginButton(
          label: "تسجيل بواسطة جوجل",
          iconPath: Assets.assetsImagesIcGoogle,
          onPressed: () {
            print("Google login");
          },
        ),
        SizedBox(height: 16),
        SocialLoginButton(
          label: "تسجيل بواسطة أبل",
          iconPath: Assets.assetsImagesIcApple,
          onPressed: () {
            print("Apple login");
          },
        ),
        SizedBox(height: 16),
        SocialLoginButton(
          label: "تسجيل بواسطة فيسبوك",
          iconPath: Assets.assetsImagesIcFacebook,
          onPressed: () {
            print("Facebook login");
          },
        ),
      ],
    );
  }
}
