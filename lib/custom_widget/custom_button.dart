import 'package:flutter/material.dart';
import 'package:screl_project/utilities/constant.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CustomButtonWidget({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Constant.backgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: onPressed,
      child: Text(buttonText, style: const TextStyle(color: Constant.textColor)),
    );
  }
}
