import 'package:get/get.dart';

import '../controllers/news_insights_controller.dart';

class NewsInsightsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsInsightsController>(
      () => NewsInsightsController(),
    );
  }
}
