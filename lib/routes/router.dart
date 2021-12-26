import 'package:get/get.dart';
import 'package:hydration/feature/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:hydration/feature/settings/presentation/screens/settings_screen.dart';
import 'package:hydration/feature/splash/presentation/screens/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String dashboard = '/dashboard';
  static const String settings = '/settings';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: dashboard,
      page: () => const DashboardScreen(),
    ),
    GetPage(
      name: settings,
      page: () => const SettingScreen(),
    )
  ];
}
