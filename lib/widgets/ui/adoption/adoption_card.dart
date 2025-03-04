import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petlyfe_mobile/widgets/ui/home/info_row.dart';

class AdoptionCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String address;
  final String owner;
  final String age;
  final String gender;
  final String breed;
  final VoidCallback? onActionPressed;
  final VoidCallback onPressed;

  const AdoptionCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.owner,
    required this.age,
    required this.gender,
    required this.breed,
    required this.onPressed,
    this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),

                  // Info Hewan
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/svg/alamat.svg'),
                            SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                address,
                                style: TextStyle(fontSize: 10),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            CircleAvatar(radius: 10),
                            SizedBox(width: 5),
                            Text(owner, style: TextStyle(fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),

                  // Tombol Aksi
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/svg/option.svg',
                      color: Colors.black,
                    ),
                    onPressed: onActionPressed,
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Informasi Tambahan
              Row(
                children: [
                  Expanded(
                    child: InfoRow(
                      iconPath: "assets/icons/svg/umur.svg",
                      label: "Umur",
                      value: age,
                    ),
                  ),
                  Expanded(
                    child: InfoRow(
                      iconPath: "assets/icons/svg/betina.svg",
                      label: "Kelamin",
                      value: gender,
                    ),
                  ),
                  Expanded(
                    child: InfoRow(
                      iconPath: "assets/icons/svg/ras.svg",
                      label: "Ras",
                      value: breed,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
