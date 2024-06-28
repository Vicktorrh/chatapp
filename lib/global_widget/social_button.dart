import 'package:flutter/material.dart';
import 'package:freshproject/constant/app_color.dart';
import 'package:freshproject/global_widget/image_widget.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String imagePath;
  final Color color;
  final Color? imageColor;
  const SocialButton(
      {super.key,
      this.color = AppColor.white,
      this.imageColor,
      required this.imagePath,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: color),
        ),
        child: ImageWidget(
          imagePath: imagePath,
          color: imageColor,
          width: 40,
        ),
      ),
    );
  }
}
