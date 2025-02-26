import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceItem extends StatelessWidget {
  final String imageUrl;
  final String label;
  final Color borderColor;
  final Color textColor;

  const ServiceItem({
    super.key,
    required this.imageUrl,
    required this.label,
    required this.borderColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58,
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: borderColor),
            ),
            child: SvgPicture.asset(
              imageUrl,
              width: 10,
              height: 10,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(fontSize: 12, color: textColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
