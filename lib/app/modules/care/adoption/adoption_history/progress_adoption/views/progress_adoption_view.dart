import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/ui/adoption/custom_stepper.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_appbar.dart';

import '../controllers/progress_adoption_controller.dart';

class ProgressAdoptionView extends GetView<ProgressAdoptionController> {
  const ProgressAdoptionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/svg/your pet.svg', height: 24),
            const SizedBox(width: 10),
            Text("Riwayat Adopsi",
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomStepper(
              isLastStep: false,
              title: "Buat Postingan Adopsi",
              subTitle: "7 Maret 2025 - Jam 11.45",
              status: true,
              onTap: () {
                print("Lihat Detail");
              },
            ),
            CustomStepper(
              isLastStep: false,
              title: "Tawaran Adopsi",
              subTitle: "Diperbarui pada 7 Maret 2025 - Jam 12.10",
              status: false,
              onTap: () {
                print("Lihat Detail");
              },
            ),
            CustomStepper(
              isLastStep: true,
              title: "Buat Postingan Adopsi",
              subTitle: "7 Maret 2025 - Jam 11.45",
              status: false,
              onTap: () {
                print("Lihat Detail");
              },
            ),
          ],
        ),
      ),
    );
  }
}
