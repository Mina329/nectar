import 'package:flutter/material.dart';

class CustomElevatedBtn extends StatelessWidget {
  const CustomElevatedBtn(
      {super.key,
      required this.onPressed,
      required this.txt,
      required this.style});
  final VoidCallback onPressed;
  final String txt;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        txt,
        style: style,
      ),
    );
  }
}
