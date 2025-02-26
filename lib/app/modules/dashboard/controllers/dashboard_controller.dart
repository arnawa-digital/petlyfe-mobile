import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  final List<Map<String, dynamic>> navigation = [
    {
      "title": "Dokter & Klinik",
      "onTap": () => Get.toNamed(Routes.DOCTOR_CLINIC),
    },
    {
      "title": "Shelter",
      "onTap": () => Get.toNamed(Routes.SHELTER),
    },
    {
      "title": "Berita & Wawasan",
      "onTap": () => Get.toNamed(Routes.NEWS_INSIGHTS),
    },
    {
      "title": "Toko Online",
      "onTap": () => Get.toNamed(Routes.ONLINE_STORE),
    }
  ];
}
