import 'package:educational_app/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget {
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color
      body: Center(
        child: Image.asset(
          'assets/images/LOGO.png', // Path to your logo
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
