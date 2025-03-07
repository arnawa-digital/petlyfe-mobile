import 'package:flutter/material.dart';

class Uniqueness extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;

  const Uniqueness({
    super.key,
    required this.text,
    this.color = Colors.pink,
    this.icon = Icons.check,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(icon, color: Colors.white, size: 12),
        ),
        const SizedBox(width: 5),
        Expanded(child: Text(text))
      ],
    );
  }
}
