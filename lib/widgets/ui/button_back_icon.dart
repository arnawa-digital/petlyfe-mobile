import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonBackIcon extends StatelessWidget {
  const ButtonBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset('assets/icons/svg/arrow.svg'));
  }
}
