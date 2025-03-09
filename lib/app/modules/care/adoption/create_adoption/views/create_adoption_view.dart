import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/utils/helpers/validators/adoption_validator.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_appbar.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_text_field.dart';

import '../controllers/create_adoption_controller.dart';

class CreateAdoptionView extends GetView<CreateAdoptionController> {
  const CreateAdoptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/svg/your pet.svg', height: 24),
            const SizedBox(width: 10),
            const Text(
              "Buat Adopsi Peliharaan",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: controller.createAdoption,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                controller: controller.petName,
                label: "Nama Peliharaan",
                hintText: "Masukkan nama adopsi peliharaan anda",
                validator: (value) => AdoptionValidator.validateRequired(
                    value, "Nama Peliharaan"),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: controller.description,
                minLines: 5,
                maxLines: null,
                label: "Deskripsi",
                hintText: "Masukkan deskripsi adopsi peliharaan anda...",
                validator: (value) =>
                    AdoptionValidator.validateRequired(value, "Deskripsi"),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: controller.address,
                label: "Alamat Lengkap",
                hintText: "Masukkan alamat lengkap",
                validator: AdoptionValidator.validateAddress,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: controller.urlGoogleMaps,
                label: "URL Google Maps",
                hintText: "Masukkan URL Google Maps alamat lengkap",
                validator: AdoptionValidator.validateUrl,
              ),
              const SizedBox(height: 16),
              Text(
                "Tambah Keunikan Peliharaan",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Obx(() => Column(
                    children: List.generate(controller.uniquenessList.length,
                        (index) {
                      return Column(
                        children: [
                          CustomTextField(
                            controller: controller.uniquenessList[index],
                            hintText: "Masukkan keunikan peliharaan anda",
                            validator: (value) =>
                                AdoptionValidator.validateRequired(
                                    value, "Keunikan Peliharaan"),
                          ),
                          const SizedBox(height: 16),
                        ],
                      );
                    }),
                  )),
              GestureDetector(
                onTap: controller.addUniqueness,
                child: DottedBorder(
                  color: Colors.grey,
                  radius: const Radius.circular(10),
                  dashPattern: const [8],
                  strokeWidth: 1,
                  strokeCap: StrokeCap.round,
                  borderType: BorderType.RRect,
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, color: Colors.grey),
                        SizedBox(width: 5),
                        Text("Tambah Keunikan",
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tambah Galeri Foto",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "(maksimal 4 foto)",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: DottedBorder(
                    color: Colors.grey,
                    radius: const Radius.circular(10),
                    dashPattern: const [8],
                    strokeWidth: 1,
                    strokeCap: StrokeCap.round,
                    borderType: BorderType.RRect,
                    child: Center(
                      child: SizedBox(
                        height: 80,
                        width: 50,
                        child: Center(
                            child: SvgPicture.asset(
                                'assets/icons/svg/add image.svg')),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomButton(
          onPressed: () {
            if (controller.createAdoption.currentState!.validate()) {
              controller.create();
            }
          },
          backgroundColor: Colors.blue,
          child: const Text(
            "Buat Adopsi Peliharaan",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
