import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  final String name;
  final String image;
  final Color color;
  const StatusWidget({
    super.key,
    required this.name,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 7),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: color),
              image: DecorationImage(image: AssetImage(image))),
        ),
        Text(name, style: TextStyle(fontSize: 15, color: Colors.white)),
      ],
    );
  }
}
