import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:petlyfe_mobile/app/modules/pet_profile/controllers/pet_profile_controller.dart';
import 'package:petlyfe_mobile/app/modules/user_profile/controllers/user_profile_controller.dart';

class LandingController extends GetxController {
  //TODO: Implement LandingController

  final count = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
