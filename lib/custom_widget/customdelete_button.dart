import 'package:flutter/material.dart';

class CustomDeleteButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomDeleteButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.delete,
        color: Colors.red,
      ),
      onPressed: onPressed,
    );
  }
}