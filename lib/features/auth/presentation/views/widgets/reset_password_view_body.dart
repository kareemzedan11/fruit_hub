import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/core/widgets/custom_botton.dart';
import 'package:fruithub/core/widgets/custom_text_form_field.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 24),
            Text(
              "قم بإنشاء كلمة مرور جديدة لتسجيل الدخول",

              style: TextStyles.semiBold16.copyWith(
                color: const Color(0xFF0C0D0D),
              ),
            ),

            SizedBox(height: 34),
            CustomTextFormField(
              hintText: "كلمة المرور",
              keyboardType: TextInputType.visiblePassword,
              iconShow: true,
            ),
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: "تاكيد كلمة المرور",
              keyboardType: TextInputType.visiblePassword,
              iconShow: true,
            ),
            SizedBox(height: 36),
            CustomBotton(title: "إنشاء كلمة مرور جديدة", ontap: () {}),
          ],
        ),
      ),
    );
  }
}
