import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/layouts/care_dashboard/detail_care_dashboard_layout.dart';

import '../controllers/doctor_clinic_controller.dart';

class DoctorClinicView extends GetView<DoctorClinicController> {
  const DoctorClinicView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DetailCareDashboardLayout(
      backgroundImage: "assets/images/home banner.png",
      title: "Doktor & Klinik",
      iconPath: "assets/icons/svg/home.svg",
      backgroundColor: Colors.white,
      textColor: Colors.black,
    ));
  }
}
