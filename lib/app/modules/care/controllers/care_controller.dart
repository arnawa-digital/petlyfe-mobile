import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';

class CareController extends GetxController {
  //TODO: Implement CareController

  final List<Map<String, dynamic>> navigation = [
    {
      "title": "Donasi",
      "onTap": () => Get.toNamed(Routes.DONATION),
    },
    {
      "title": "Adopsi",
      "onTap": () => Get.toNamed(Routes.ADOPTION),
    },
    {
      "title": "Kehilangan",
      "onTap": () => Get.toNamed(Routes.LOST),
    },
    {
      "title": "Pelacakan",
      "onTap": () => Get.toNamed(Routes.TRACKING),
    }
  ];
}
