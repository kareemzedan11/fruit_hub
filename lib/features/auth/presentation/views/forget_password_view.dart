import 'package:flutter/material.dart';
import 'package:fruithub/core/widgets/custome_app_bar.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
static const String forget_password = '/forget-password';
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
          appBar: builderAppBar( context, title: "نسيان كلمة المرور" , ontap:(){
          Navigator.pop(context);

          }),
      backgroundColor: Colors.white,
      body: ForgetPasswordViewBody(),
    );
  }
}