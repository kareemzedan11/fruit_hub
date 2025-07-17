import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/core/widgets/custom_botton.dart';
import 'package:fruithub/core/widgets/custom_text_form_field.dart';
import 'package:fruithub/features/auth/presentation/views/verify_password_veiw.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            Text(
              "لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.",
              style: TextStyles.semiBold16.copyWith(
                color: const Color(0xFF616A6B),
              ),
            ),
            SizedBox(height: 31),

            CustomTextFormField(
              hintText: "رقم الهاتف",
              keyboardType: TextInputType.phone,
            ),

            SizedBox(height: 30),
            CustomBotton(
              title: "نسيت كلمة المرور",
              ontap: () {
                Navigator.pushNamed(
                  context,
                  VerifyPasswordVeiw.verify_password,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
