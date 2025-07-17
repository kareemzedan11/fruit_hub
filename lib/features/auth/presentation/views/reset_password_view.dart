import 'package:flutter/material.dart';
import 'package:fruithub/core/widgets/custome_app_bar.dart';
import 'package:fruithub/features/auth/presentation/views/widgets/reset_password_view_body.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});
static const String reset_password = '/reset-password';
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
     appBar: builderAppBar( context, title: "كلمة مرور جديدة" , ontap:(){
          Navigator.pop(context);

     }),
     backgroundColor: Colors.white,
     body:ResetPasswordViewBody() ,
    );
  }
}