import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/colors_manager.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/core/widgets/custom_botton.dart';
import 'package:fruithub/core/widgets/custom_text_form_field.dart';
import 'package:fruithub/core/widgets/text_action_prompt.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: "الاسم كامل",
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 16),

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
            TermsAndConditions(),
            SizedBox(height: 42),
            CustomBotton(title: "إنشاء حساب جديد", ontap: () {}),
            SizedBox(height: 26),
            TextActionPrompt(
              leadingText: "تمتلك حساب بالفعل؟  ",
              actionText: "تسجيل دخول",
              onTap: () {
                Navigator.pop(context);
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
          ],
        ),
      ),
    );
  }
}
