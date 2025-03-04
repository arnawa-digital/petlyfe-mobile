import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdoptionController extends GetxController {
  final kucing = false.obs;
  final anjing = false.obs;
  final jantan = false.obs;
  final betina = false.obs;

  final domestik = false.obs;
  final britishShorthair = false.obs;
  final scottishFold = false.obs;
  final anggora = false.obs;
  final persian = false.obs;
  final ragdoll = false.obs;

  final warnaSatu = false.obs;
  final warnaDua = false.obs;
  final warnaTiga = false.obs;
  final warnaLebihTiga = false.obs;

  var currentRangePriceValues = const RangeValues(40, 80).obs;
}
