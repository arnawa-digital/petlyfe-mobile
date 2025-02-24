import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:petlyfe_mobile/app/modules/pet_profile/controllers/pet_profile_controller.dart';
import 'package:petlyfe_mobile/app/modules/user_profile/controllers/user_profile_controller.dart';

import '../controllers/landing_controller.dart';

class LandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(
      () => LandingController(),
    );
    Get.put(HomeController());
    Get.put(PetProfileController());
    Get.put(UserProfileController());
  }
}
