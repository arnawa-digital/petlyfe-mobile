import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petlyfe_mobile/widgets/ui/pet_profile/info_item.dart';
import 'package:petlyfe_mobile/widgets/ui/status_badge.dart';

class HeaderPetProfile extends StatelessWidget {
  final String petName;
  final String ownerName;
  final String statusLabel;
  final Color statusBgColor;
  final Color statusBorderColor;
  final Color statusTextColor;
  final Color statusIconColor;
  final String age;
  final String gender;
  final String weight;
  final String breed;

  const HeaderPetProfile({
    Key? key,
    required this.petName,
    required this.ownerName,
    required this.statusLabel,
    required this.statusBgColor,
    required this.statusBorderColor,
    required this.statusTextColor,
    required this.statusIconColor,
    required this.age,
    required this.gender,
    required this.weight,
    required this.breed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 250,
      backgroundColor: const Color(0xffE5638B),
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.none,
        background: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffE5638B), Color(0xffFD8AAD)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 40,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      StatusBadge(
                        label: statusLabel,
                        backgroundColor: statusBgColor,
                        borderColor: statusBorderColor,
                        textColor: statusTextColor,
                        iconColor: statusIconColor,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        petName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        ownerName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/svg/share.svg",
            width: 15,
            height: 15,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/svg/option.svg",
            width: 8,
            height: 8,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: InfoItem(
                    iconPath: "assets/icons/svg/umur.svg",
                    title: "Umur",
                    value: age,
                  ),
                ),
                Expanded(
                  child: InfoItem(
                    iconPath: "assets/icons/svg/betina.svg",
                    title: "Kelamin",
                    value: gender,
                  ),
                ),
                Expanded(
                  child: InfoItem(
                    iconPath: "assets/icons/svg/berat.svg",
                    title: "Berat",
                    value: weight,
                  ),
                ),
                Expanded(
                  child: InfoItem(
                    iconPath: "assets/icons/svg/ras.svg",
                    title: "Ras",
                    value: breed,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
