import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/core/widgets/custom_botton.dart';
import 'package:fruithub/features/auth/presentation/views/reset_password_view.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/otp_input_row.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/otp_input_row.dart';

class VerifyPasswordVeiwBody extends StatelessWidget {
  const VerifyPasswordVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            Text(
              'أدخل الرمز الذي أرسلناه إلى عنوان بريد التالي     Maxxx@email.com',
              textAlign: TextAlign.right,
              style: TextStyles.semiBold16.copyWith(
                color: const Color(0xFF616A6B),
              ),
            ),

            SizedBox(height: 29),

            OtpInputRow(),
            SizedBox(height: 29),

            CustomBotton(title: "تحقق من الرمز", ontap: () {
              Navigator.pushNamed(context, ResetPasswordView.reset_password);
            }),

            SizedBox(height: 24),
            Text(
              'إعادة إرسال الرمز',
              textAlign: TextAlign.center,
              style: TextStyles.semiBold16.copyWith(
                color: const Color(0xFF2D9F5D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
