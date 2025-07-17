import 'package:flutter/material.dart';
import 'package:fruithub/core/widgets/custome_app_bar.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
static const String signup = '/signup';
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: builderAppBar( context, title: "حساب جديد" , ontap:(){
          Navigator.pop(context);

      }),
      backgroundColor: Colors.white,
      body: SignupViewBody(),
    );
  }
}