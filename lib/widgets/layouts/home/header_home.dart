import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  final String userName;
  final String message;
  final VoidCallback? onNotificationPressed;

  const HeaderHome({
    super.key,
    required this.userName,
    required this.message,
    this.onNotificationPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 24,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, $userName 👋",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  message,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: onNotificationPressed,
          icon: const Icon(Icons.notifications),
        ),
      ],
    );
  }
}
