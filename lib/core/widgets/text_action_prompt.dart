import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextActionPrompt extends StatelessWidget {
  final String leadingText;
  final String actionText;
  final VoidCallback? onTap;
  final TextStyle? leadingTextStyle;
  final TextStyle? actionTextStyle;

  const TextActionPrompt({
    Key? key,
    required this.leadingText,
    required this.actionText,
    this.onTap,
    this.leadingTextStyle,
    this.actionTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: leadingTextStyle ?? const TextStyle(fontSize: 16, color: Colors.grey),
        children: [
          TextSpan(text: leadingText),
          TextSpan(
            text: actionText,
            style: actionTextStyle ?? const TextStyle(color: Colors.blue),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
