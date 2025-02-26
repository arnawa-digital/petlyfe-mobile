import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/layouts/care_dashboard/care_dashboard_layout.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CareDashboardLayout(
            iconPath: "assets/icons/svg/care.svg",
            title: "Mau Berbuat Baik Apa Hari Ini?",
            subtitle:
                "Walaupun dimanapun dan kapanpun, kamu bisa berbuat kebaikan terus menerus!",
            gridItems: controller.navigation));
  }
}
