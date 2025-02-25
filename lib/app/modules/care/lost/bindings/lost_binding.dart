import 'package:get/get.dart';

import '../controllers/lost_controller.dart';

class LostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LostController>(
      () => LostController(),
    );
  }
}
