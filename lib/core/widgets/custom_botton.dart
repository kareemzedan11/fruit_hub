import 'package:flutter/material.dart';
import 'package:fruithub/core/helper/colors_manager.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

class CustomBotton extends StatelessWidget {
  CustomBotton({super.key, required this.title, required this.ontap});
  String title;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () => ontap,
        child: Text(title, style: TextStyles.bold16.copyWith(color: Colors.white)),
      ),
    );
  }
}
