import 'package:get/get.dart';

import '../controllers/online_store_controller.dart';

class OnlineStoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnlineStoreController>(
      () => OnlineStoreController(),
    );
  }
}
