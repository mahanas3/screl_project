import 'package:flutter/material.dart';
import 'package:screl_project/utilities/constant.dart';

class CustomDeleteButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomDeleteButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.delete,
        color: Constant.deleteButtonColor,
      ),
      onPressed: onPressed,
    );
  }
}