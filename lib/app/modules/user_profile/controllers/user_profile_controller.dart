import 'package:get/get.dart';

class UserProfileController extends GetxController {
  //TODO: Implement UserProfileController

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
}
