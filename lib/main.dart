import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await GetStorage.init();
  await Future.delayed(Duration(seconds: 3));
  await dotenv.load(fileName: ".env");
  String initialRoute = await checkInitialRoute();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: initialRoute,
      getPages: AppPages.routes,
      builder: FToastBuilder(),
      theme: ThemeData(
          fontFamily: GoogleFonts.outfit().fontFamily,
          scaffoldBackgroundColor: Colors.white),
    ),
  );
  FlutterNativeSplash.remove();
}

Future<String> checkInitialRoute() async {
  String? isFirstTime = GetStorage().read('isFirstTime');
  String? token = GetStorage().read('auth_token');

  if (isFirstTime != null) {
    if (token != null) {
      return Routes.PET_PROFILE;
    }
    return Routes.LOGIN;
  }
  return Routes.ONBOARDING;
}
