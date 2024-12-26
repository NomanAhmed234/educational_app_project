// TODO Implement this library.import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    // Navigate to Home after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.onboard1); // Replaces the current screen
    });
  }
}
