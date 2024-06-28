import 'package:flutter/material.dart';
import 'package:freshproject/constant/app_color.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;
  final String buttonText;
  const AppButton(
      {super.key,
      required this.onTap,
      this.backgroundColor = AppColor.white,
      required this.buttonText,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: textColor),
          ),
        ),
      ),
    );
  }
}
