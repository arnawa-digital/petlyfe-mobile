import 'package:get/get.dart';

import '../controllers/adoption_detail_controller.dart';

class AdoptionDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdoptionDetailController>(
      () => AdoptionDetailController(),
    );
  }
}
