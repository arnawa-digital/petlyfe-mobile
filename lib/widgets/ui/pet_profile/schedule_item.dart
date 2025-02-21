import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScheduleItem extends StatelessWidget {
  final Color iconColor;
  final String title;
  final String clinicName;
  final String dateTime;
  final VoidCallback? onTap;

  const ScheduleItem({
    Key? key,
    required this.iconColor,
    required this.title,
    required this.clinicName,
    required this.dateTime,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: false,
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: iconColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
      ),
      title: Text(title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            clinicName,
            style: const TextStyle(color: Color(0xff3885DF), fontSize: 12),
          ),
          Text(
            dateTime,
            style: const TextStyle(fontSize: 12, color: Color(0xff7F7F7F)),
          ),
        ],
      ),
      trailing: SvgPicture.asset(
        "assets/icons/svg/arrow_forward.svg",
        width: 15,
        height: 15,
        color: iconColor,
      ),
      onTap: onTap,
    );
  }
}
