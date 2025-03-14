import 'package:get/get.dart';

import '../controllers/adoption_offer_controller.dart';

class AdoptionOfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdoptionOfferController>(
      () => AdoptionOfferController(),
    );
  }
}
