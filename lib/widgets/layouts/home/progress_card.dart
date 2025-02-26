import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';

class ProgressCardWidget extends StatelessWidget {
  final String level;
  final double progress;
  final String progressText;
  final VoidCallback onPressed;

  const ProgressCardWidget({
    super.key,
    required this.level,
    required this.progress,
    required this.progressText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/svg/beginner.svg",
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 5),
                Text(
                  level,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 10),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinearProgressIndicator(
                  value: progress,
                  color: Colors.white,
                  backgroundColor: Colors.grey[300],
                  minHeight: 5,
                  borderRadius: BorderRadius.circular(10),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      progressText,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    SizedBox(width: 5),
                    const Text(
                      "Reward Points",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          CustomButton(
            onPressed: onPressed,
            backgroundColor: Colors.white,
            borderRadius: 10,
            width: 35,
            padding: EdgeInsets.zero,
            child: SvgPicture.asset(
              "assets/icons/svg/arrow_forward.svg",
              width: 15,
              height: 10,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
