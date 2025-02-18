import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';
import 'package:petlyfe_mobile/utils/storage_service.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              StorageService.clearToken("auth_token");
              Get.offAllNamed(Routes.LOGIN);
            },
            child: Text("Logout")),
      ),
    );
  }
}
