import 'package:flutter/material.dart';
import 'package:fruithub/core/helper/colors_manager.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
    CustomTextFormField({super.key,required this.hintText, this.iconShow = false, required this.keyboardType });
final String ? hintText ;
  bool   iconShow  ; 
TextInputType  keyboardType ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: ColorsManager.textFieldBackColor,
        filled: true,
        contentPadding: const EdgeInsets.all(16.0),
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(color: ColorsManager.hintTextColor),
        suffixIcon: Icon(iconShow ? Icons.remove_red_eye  :null , color: Color(0XFFC9CECF),),

        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: ColorsManager.textFieldBorderColor),
    );
  }
}
