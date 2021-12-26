import 'package:get/get.dart';
import 'package:hydration/feature/splash/presentation/pages/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
    ),
  ];
}
