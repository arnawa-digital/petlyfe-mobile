import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/layouts/care_dashboard/detail_care_dashboard_layout.dart';
import 'package:petlyfe_mobile/widgets/ui/button_back.dart';

import '../controllers/donation_controller.dart';

class DonationView extends GetView<DonationController> {
  const DonationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DetailCareDashboardLayout(
      backgroundImage: "assets/images/home banner.png",
      title: "Donasi",
      iconPath: "assets/icons/svg/home.svg",
      backgroundColor: Colors.white,
      textColor: Colors.black,
    ));
  }
}
