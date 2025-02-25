import 'package:flutter/material.dart';

class CareDashboardCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap; // Tambahkan parameter onTap

  const CareDashboardCard(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Tambahkan event onTap
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 2,
        shadowColor: Colors.grey.withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
