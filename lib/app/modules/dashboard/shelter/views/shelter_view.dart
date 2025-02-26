import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/layouts/care_dashboard/detail_care_dashboard_layout.dart';

import '../controllers/shelter_controller.dart';

class ShelterView extends GetView<ShelterController> {
  const ShelterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DetailCareDashboardLayout(
      backgroundImage: "assets/images/home banner.png",
      title: "Shelter",
      iconPath: "assets/icons/svg/home.svg",
      backgroundColor: Colors.white,
      textColor: Colors.black,
    ));
  }
}
