import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petlyfe_mobile/widgets/ui/button_back_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  final String? actionIcon;
  final VoidCallback? onActionPressed;
  final PreferredSizeWidget? bottom;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actionIcon,
    this.onActionPressed,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: ButtonBackIcon(),
      title: title,
      centerTitle: true,
      actions: actionIcon != null
          ? [
              IconButton(
                icon: SvgPicture.asset(actionIcon!, height: 24),
                onPressed: onActionPressed,
              ),
            ]
          : null,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(bottom == null ? kToolbarHeight : kToolbarHeight + 60);
}
