import 'package:flutter/material.dart';
import 'package:fruithub/core/helper/assets_manager.dart';
import 'package:fruithub/core/helper/colors_manager.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/core/widgets/custom_botton.dart';
import 'package:fruithub/core/widgets/custom_text_form_field.dart';
import 'package:fruithub/core/widgets/text_action_prompt.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/social_login_options.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: "البريد الالكتروني",
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),

            CustomTextFormField(
              hintText: "كلمة المرور",
              iconShow: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "نسيت كلمة المرور؟",

                style: TextStyles.semiBold13.copyWith(color: Color(0XFF2D9F5D)),
              ),
            ),
            SizedBox(height: 33),
            CustomBotton(title: "تسجيل دخول", ontap: () {}),
            SizedBox(height: 33),
            TextActionPrompt(
              leadingText: "لا تمتلك حساب؟ ",
              actionText: "قم بإنشاء حساب",
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
              leadingTextStyle: TextStyles.semiBold16.copyWith(
                color: ColorsManager.hintTextColor,
                fontFamily: 'Cairo',
              ),
              actionTextStyle: TextStyles.semiBold16.copyWith(
                color: ColorsManager.primaryColor,
                fontFamily: 'Cairo',
              ),
            ),

            SizedBox(height: 37),

            OrDivider(),
            SizedBox(height: 16),
            SocialLoginOptions(),
          ],
        ),
      ),
    );
  }
}
 