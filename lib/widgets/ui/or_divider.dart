import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  final String text;
  final Color dividerColor;

  const OrDivider({
    super.key,
    this.text = "OR",
    this.dividerColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: dividerColor,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: dividerColor),
          ),
        ),
        Expanded(
          child: Divider(
            color: dividerColor,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
