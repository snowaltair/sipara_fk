import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;

  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.buttonColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: textColor,
          minimumSize: const Size.fromHeight(60),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          shape: const StadiumBorder()),
      child: Text(text),
    );
  }
}
