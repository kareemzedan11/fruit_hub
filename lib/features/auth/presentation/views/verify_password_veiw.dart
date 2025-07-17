import 'package:flutter/material.dart';
import 'package:fruithub/core/widgets/custome_app_bar.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/verfiy_password_view_body.dart';

class VerifyPasswordVeiw extends StatelessWidget {
  const VerifyPasswordVeiw({super.key});
static  const String verify_password = '/verify-password';
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
         appBar: builderAppBar( context, title: "التحقق من الرمز" , ontap:(){

          Navigator.pop(context);
         }),
         backgroundColor: Colors.white,
         body: VerifyPasswordVeiwBody(),
    );
  }
}