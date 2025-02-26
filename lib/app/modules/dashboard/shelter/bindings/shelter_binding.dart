import 'package:get/get.dart';

import '../controllers/shelter_controller.dart';

class ShelterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShelterController>(
      () => ShelterController(),
    );
  }
}
