import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OwnerAdoptionInfo extends StatelessWidget {
  final String ownerName;
  final String address;
  final String profileIconPath;
  final String addressIconPath;

  const OwnerAdoptionInfo({
    super.key,
    required this.ownerName,
    required this.address,
    this.profileIconPath = "assets/icons/svg/profile.svg",
    this.addressIconPath = "assets/icons/svg/alamat.svg",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    profileIconPath,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Pemilik Adopsi",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const CircleAvatar(radius: 10),
                  const SizedBox(width: 10),
                  Text(
                    ownerName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    addressIconPath,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Alamat Lengkap",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                address,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
