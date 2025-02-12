import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/models/onboard.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';

class OnboardingController extends GetxController {
  //TODO: Implement OnboardingController

  var pageIndex = 0.obs;
  final PageController pageController = PageController(initialPage: 0);
  final List<OnBoard> data = [
    OnBoard(
      image: "assets/images/Frame 377.png",
      title: "Welcome to Petlyfe ID",
      description: "AI Serba bisa untuk hewan peliharaan anda",
    ),
    OnBoard(
      image: "assets/images/Frame 377.png",
      title: "AI Medical Checkup & AI Bonding Meter",
      description: "Tambah kedekatanmu bersama mereka",
    ),
    OnBoard(
      image: "assets/images/Frame 377.png",
      title: "Aplikasi Lengkap untuk Mereka",
      description: "Bantu sesama untuk kesejahteraan bersama",
    ),
  ];

  void onSlideChange(int index) {
    pageIndex.value = index;
  }

  void nextPage() {
    if (pageIndex.value == data.length - 1) {
      Get.offNamed(Routes.LOGIN);
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn,
      );
    }
  }

  // void prevPage() {
  //   pageController.previousPage(
  //     duration: const Duration(milliseconds: 300),
  //     curve: Curves.fastOutSlowIn,
  //   );
  // }
}
