import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';

class InfoRow extends StatelessWidget {
  final String iconPath;
  final String label;
  final String value;
  final Color buttonColor;

  const InfoRow({
    super.key,
    required this.iconPath,
    required this.label,
    required this.value,
    this.buttonColor = const Color(0xffFFF0F5),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          onPressed: () {},
          backgroundColor: buttonColor,
          width: 40,
          padding: EdgeInsets.zero,
          borderRadius: 10,
          disableClickEffect: true,
          child: SvgPicture.asset(
            iconPath,
            width: 20,
            height: 20,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 10),
            ),
            Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ],
        )
      ],
    );
  }
}
