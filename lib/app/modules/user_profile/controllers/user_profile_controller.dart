import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/models/user.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';
import 'package:petlyfe_mobile/utils/api/auth/AuthService.dart';
import 'package:petlyfe_mobile/utils/helpers/toast_helper.dart';
import 'package:petlyfe_mobile/utils/storage_service.dart';

class UserProfileController extends GetxController {
  //TODO: Implement UserProfileController
  final profile = Rx<User?>(null);
  final isLoading = false.obs;

  final List<Map<String, String>> settingsOptions = [
    {
      'iconPath': "assets/icons/svg/membership.svg",
      'title': "Membership Plan",
    },
    {
      'iconPath': "assets/icons/svg/aktivitas.svg",
      'title': "Daftar Aktivitas Akun",
    },
    {
      'iconPath': "assets/icons/svg/keamanan.svg",
      'title': "Keamanan",
    },
    {
      'iconPath': "assets/icons/svg/notifikasi.svg",
      'title': "Notifikasi",
    },
    {
      'iconPath': "assets/icons/svg/alamat.svg",
      'title': "Pilih Alamat",
    },
    {
      'iconPath': "assets/icons/svg/bahasa.svg",
      'title': "Pilih Bahasa",
    },
    {
      'iconPath': "assets/icons/svg/tentang.svg",
      'title': "Tentang Kami",
    },

    // Tambahkan pengaturan lainnya di sini
  ];

  final List<Map<String, String>> information = [
    {
      'iconPath': "assets/icons/svg/tentang.svg",
      'title': "Tentang Kami",
    },
    {
      'iconPath': "assets/icons/svg/kebijakan privasi.svg",
      'title': "Kebijakan Privasi",
    },

    // Tambahkan pengaturan lainnya di sini
  ];

  void logout() {
    StorageService.clearToken("auth_token");
    ToastHelper.show(
        backgroundColor: Colors.green,
        message: "Logout Berhasil",
        fontSize: 16.0,
        textColor: Colors.white);
    Get.offAllNamed(Routes.LOGIN);
  }

  Future<void> getProfile() async {
    try {
      isLoading.value = true;
      final user = await AuthService().getProfile();
      profile.value = user;
    } catch (e) {
      ToastHelper.show(
          backgroundColor: Colors.red,
          message: e.toString(),
          fontSize: 16.0,
          textColor: Colors.white);
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getProfile();
  }
}
