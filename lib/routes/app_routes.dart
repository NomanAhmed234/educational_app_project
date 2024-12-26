import 'package:educational_app/views/home_screen.dart';
import 'package:educational_app/views/onboard_screens/onboard1_screen.dart';
import 'package:educational_app/views/onboard_screens/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const splash = '/splash';
  static const home = '/home';
  static const onboard1 = '/onboard1';
  static const onboard2 = '/onboard2';
  static const onboard3 = '/onboard3';
  static const onboard4 = '/onboard4';

  static final routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: home, page: () => HomeScreen()),
    GetPage(name: onboard1, page: () => OnboardingScreen()),
    GetPage(name: onboard2, page: () => OnboardingScreen()),
    GetPage(name: onboard3, page: () => OnboardingScreen()),
    GetPage(name: onboard4, page: () => OnboardingScreen()),
  ];
}
