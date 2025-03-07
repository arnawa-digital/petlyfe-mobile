import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ButtonBack extends StatelessWidget {
  final void Function()? onBackPressed;

  const ButtonBack({super.key, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white, // Background putih
      shape: const CircleBorder(), // Bentuk lingkaran
      elevation: 2, // Efek bayangan
      child: InkWell(
        onTap: onBackPressed ?? () => Get.back(),
        borderRadius: BorderRadius.circular(50),
        child: Padding(
          padding: EdgeInsets.all(10), // Padding agar lebih besar
          child: SvgPicture.asset(
            'assets/icons/svg/arrow.svg',
          ), // Icon back
        ),
      ),
    );
  }
}
