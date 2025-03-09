import 'package:get/get.dart';

import '../controllers/create_adoption_controller.dart';

class CreateAdoptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateAdoptionController>(
      () => CreateAdoptionController(),
    );
  }
}
