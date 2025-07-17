import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/core/widgets/custome_app_bar.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
static const String loginView = '/loginView';
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: builderAppBar( context, title: "تسجيل الدخول" , ontap:(){
          Navigator.pop(context);

      }),
      backgroundColor: Colors.white,
      body: LoginViewBody(),
    );
  }

 
}