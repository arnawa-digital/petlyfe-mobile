import 'package:flutter/material.dart';

class DonationCard extends StatelessWidget {
  final String daysRemaining;
  final String shelterName;
  final String fundraiserTitle;
  final String collectedAmount;
  final double progress;

  const DonationCard({
    super.key,
    required this.daysRemaining,
    required this.shelterName,
    required this.fundraiserTitle,
    required this.collectedAmount,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Color(0xffECF4FE),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "$daysRemaining hari lagi",
                    style: const TextStyle(
                      color: Color(0xff2B68AE),
                      fontSize: 8,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            shelterName,
            style: const TextStyle(fontSize: 10),
          ),
          const SizedBox(height: 5),
          Text(
            fundraiserTitle,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          const Text("Terkumpul", style: TextStyle(fontSize: 10)),
          const SizedBox(height: 5),
          Text(
            "Rp $collectedAmount",
            style: const TextStyle(
              fontSize: 12,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: progress, // Nilai harus antara 0.0 - 1.0
                backgroundColor: Colors.grey[300],
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
