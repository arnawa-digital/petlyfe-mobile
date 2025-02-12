import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/layouts/onboarding/dot_indicator.dart';
import 'package:petlyfe_mobile/widgets/layouts/onboarding/slider_widget.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SliderWidget(
              pageController: controller.pageController,
              onboard: controller.data,
              pageIndex: controller.pageIndex.value,
              height: height,
              width: width,
              onChange: controller.onSlideChange,
            ),
            Obx(() {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DotIndicator(
                      itemCount: controller.data.length,
                      currentIndex: controller.pageIndex.value,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              );
            }),
            Obx(() {
              return Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: CustomButton(
                      width: width,
                      onPressed: controller.nextPage,
                      backgroundColor: Colors.blue,
                      child: Text(
                        controller.pageIndex.value == controller.data.length - 1
                            ? "Mulai Sekarang"
                            : "Selanjutnya",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
