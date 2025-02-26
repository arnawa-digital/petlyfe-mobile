import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/layouts/care_dashboard/detail_care_dashboard_layout.dart';

import '../controllers/tracking_controller.dart';

class TrackingView extends GetView<TrackingController> {
  const TrackingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DetailCareDashboardLayout(
      backgroundImage: "assets/images/home banner.png",
      title: "Kehilangan",
      iconPath: "assets/icons/svg/home.svg",
      backgroundColor: Colors.white,
      textColor: Colors.black,
    ));
  }
}
