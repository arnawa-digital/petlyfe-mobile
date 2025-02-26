import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/layouts/care_dashboard/detail_care_dashboard_layout.dart';

import '../controllers/online_store_controller.dart';

class OnlineStoreView extends GetView<OnlineStoreController> {
  const OnlineStoreView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DetailCareDashboardLayout(
      backgroundImage: "assets/images/home banner.png",
      title: "Toko Online",
      iconPath: "assets/icons/svg/home.svg",
      backgroundColor: Colors.white,
      textColor: Colors.black,
    ));
  }
}
