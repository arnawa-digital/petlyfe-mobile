import 'package:get/get.dart';

import '../controllers/progress_adoption_controller.dart';

class ProgressAdoptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProgressAdoptionController>(
      () => ProgressAdoptionController(),
    );
  }
}
