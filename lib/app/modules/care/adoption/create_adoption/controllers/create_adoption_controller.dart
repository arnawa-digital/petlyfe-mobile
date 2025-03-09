import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAdoptionController extends GetxController {
  final GlobalKey<FormState> createAdoption = GlobalKey<FormState>();

  final TextEditingController petName = TextEditingController();
  final TextEditingController description = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController urlGoogleMaps = TextEditingController();

  // Gunakan list Rx untuk menyimpan keunikan
  final RxList<TextEditingController> uniquenessList = <TextEditingController>[
    TextEditingController(),
  ].obs;

  void addUniqueness() {
    uniquenessList.add(TextEditingController());
  }

  void removeUniqueness(int index) {
    uniquenessList[index].dispose();
    uniquenessList.removeAt(index);
  }

  void create() {
    if (createAdoption.currentState!.validate()) {
      // Lakukan sesuatu
    }
  }
}
