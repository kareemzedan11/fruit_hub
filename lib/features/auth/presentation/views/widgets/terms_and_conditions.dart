import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1.5, color: const Color(0xFFDCDEDE)),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyles.semiBold13.copyWith(
                  color: const Color(0xFF949D9E),
                  fontFamily: "Cairo",
                ),
                children: [
                  const TextSpan(text: "من خلال إنشاء حساب ، فإنك توافق على "),
                  TextSpan(
                    text: "الشروط والأحكام الخاصة بنا",
                    style: TextStyles.semiBold13.copyWith(
                      color: const Color(0xFF2D9F5D),
                      fontFamily: "Cairo",
                    ),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap = () {
                            // Navigate to terms page
                          },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
