import 'package:flutter/material.dart';

class ReminderForYou extends StatelessWidget {
  final Color leadingColor;
  final String title;
  final String subtitle;
  final Color trailingColor;

  const ReminderForYou({
    super.key,
    required this.leadingColor,
    required this.title,
    required this.subtitle,
    required this.trailingColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true, // Mengurangi padding atas dan bawah
      contentPadding: EdgeInsets.zero, // Menghilangkan padding default
      visualDensity:
          VisualDensity.compact, // Lebih kompak lagi tanpa padding tambahan
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: leadingColor,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: trailingColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
