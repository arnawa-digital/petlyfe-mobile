import 'package:get/get.dart';

import '../controllers/doctor_clinic_controller.dart';

class DoctorClinicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoctorClinicController>(
      () => DoctorClinicController(),
    );
  }
}
