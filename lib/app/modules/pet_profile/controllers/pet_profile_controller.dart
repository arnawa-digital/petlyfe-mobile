import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/modules/home/controllers/home_controller.dart';

class PetProfileController extends GetxController {
  //TODO: Implement PetProfileController

  final List<Map<String, String>> servicesList = [
    {
      "imageUrl": "assets/icons/svg/medical check.svg",
      "label": "Medical Checkup"
    },
    {
      "imageUrl": "assets/icons/svg/bonding checker.svg",
      "label": "Bonding Checker"
    },
    {
      "imageUrl": "assets/icons/svg/cuteness meter.svg",
      "label": "Cuteness Checker"
    },
    {"imageUrl": "assets/icons/svg/grooming.svg", "label": "Grooming"},
    {"imageUrl": "assets/icons/svg/grooming.svg", "label": "Grooming"},
  ];
  final Map<String, double> healthAndActivity = {
    "senin": 2,
    "selasa": 5,
    "rabu": 7,
    "kamis": 10,
    "jumat": 3,
    "sabtu": 10,
    "minggu": 2,
  };
}
