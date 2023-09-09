import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.color,
    required this.txt,
    required this.icon, required this.onPressed,
  });
  final Color color;
  final String txt;
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: const ButtonStyle().copyWith(
          backgroundColor: MaterialStatePropertyAll(
            color,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
            ),
            Text(
              txt,
              style: Theme.of(context).textTheme.labelLarge,
            )
          ],
        ),
      ),
    );
  }
}
