import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpInputRow extends StatelessWidget {
  const OtpInputRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        obscureText: false,
        animationType: AnimationType.fade,
        keyboardType: TextInputType.number,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(4),
          fieldHeight: 60,
          fieldWidth: 74,
          activeFillColor: Color(0xFFF9FAFA),
          selectedFillColor: Color(0xFFF9FAFA),
          inactiveFillColor: Color(0xFFF9FAFA),
          inactiveColor: Color(0xFFE6E9E9),
          activeColor: Color(0xFFE6E9E9),  
          selectedColor: Color(
            0xFFF4A91F,
          ), 
        ),

        animationDuration: Duration(milliseconds: 300),
        enableActiveFill: true,
        onChanged: (value) {
          print(value);
        },
        onCompleted: (value) {
          print("OTP Entered: $value");
        },
      ),
    );
  }
}
