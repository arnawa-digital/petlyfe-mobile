import 'package:flutter/material.dart';
import 'package:petlyfe_mobile/widgets/ui/home/info_row.dart';

class HeaderAdoptionDetail extends StatelessWidget {
  final String name;
  final String age;
  final String gender;
  final String breed;
  final String weight;

  const HeaderAdoptionDetail({
    super.key,
    required this.name,
    required this.age,
    required this.gender,
    required this.breed,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 16,
          runSpacing: 8,
          children: [
            _buildInfoItem(context, "assets/icons/svg/umur.svg", "Umur", age),
            _buildInfoItem(
                context, "assets/icons/svg/betina.svg", "Kelamin", gender),
            _buildInfoItem(context, "assets/icons/svg/ras.svg", "Ras", breed),
            _buildInfoItem(
                context, "assets/icons/svg/berat.svg", "Berat", weight),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoItem(
      BuildContext context, String iconPath, String label, String value) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 24,
      child: InfoRow(
        iconPath: iconPath,
        label: label,
        value: value,
        labelColor: Colors.white,
        valueColor: Colors.white,
      ),
    );
  }
}
