import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String value;
  final Color backgroundColor;

  const InfoItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.value,
    this.backgroundColor = const Color(0xffFFF0F5),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(
            iconPath,
            width: 20,
            height: 20,
          ),
        ),
        const SizedBox(height: 5),
        Text(title,
            style: const TextStyle(
              fontSize: 10,
            )),
        Text(value,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
