import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petlyfe_mobile/widgets/ui/home/info_row.dart';

class PetCard extends StatelessWidget {
  const PetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Color(0xffE5638B)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const PetAvatarAndStatus(),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PetHeader(),
                  const SizedBox(height: 10),
                  const PetInfoSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Widget untuk Avatar & Status Kesehatan
class PetAvatarAndStatus extends StatelessWidget {
  const PetAvatarAndStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(radius: 40),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xffEFFBF0),
            border: Border.all(color: const Color(0xff469B48)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CircleAvatar(radius: 5, backgroundColor: Color(0xff469B48)),
              SizedBox(width: 5),
              Text("Healthy",
                  style: TextStyle(color: Color(0xff469B48), fontSize: 8)),
            ],
          ),
        ),
      ],
    );
  }
}

// Widget untuk Header (Nama, Subtitle, dan Tombol)
class PetHeader extends StatelessWidget {
  const PetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Bocil Si Kecil",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            Text(
              "Adek Cece Eny Lowti",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        Row(
          children: [
            InkWell(child: SvgPicture.asset("assets/icons/svg/share.svg")),
            const SizedBox(width: 20),
            InkWell(child: SvgPicture.asset("assets/icons/svg/option.svg")),
          ],
        )
      ],
    );
  }
}

class PetInfoSection extends StatelessWidget {
  const PetInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              InfoRow(
                iconPath: "assets/icons/svg/umur.svg",
                label: "Umur",
                value: "1 Tahun",
              ),
              SizedBox(height: 5), // Jarak antar baris
              InfoRow(
                iconPath: "assets/icons/svg/berat.svg",
                label: "Berat",
                value: "3.42 Kg",
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              InfoRow(
                iconPath: "assets/icons/svg/betina.svg",
                label: "Kelamin",
                value: "Betina",
              ),
              SizedBox(height: 5), // Jarak antar baris
              InfoRow(
                iconPath: "assets/icons/svg/ras.svg",
                label: "Ras",
                value: "Domestic",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
