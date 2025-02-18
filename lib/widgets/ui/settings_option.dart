import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsOption extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onPressed;

  const SettingsOption({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true, // Mengurangi padding atas dan bawah
      contentPadding: EdgeInsets.zero, // Menghilangkan padding default
      leading: SvgPicture.asset(
        iconPath,
        width: 25,
        height: 25,
      ),
      title: Text(title),
      trailing: IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          "assets/icons/svg/arrow_forward.svg",
          width: 15,
          height: 15,
        ),
      ),
      onTap: onPressed, // Bisa menggunakan onTap untuk aksi utama
    );
  }
}
