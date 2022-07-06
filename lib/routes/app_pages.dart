import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:nsg_biolabs/presentation/pages/pages.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.login, page: () => const LoginPage()),
    GetPage(name: Routes.home, page: () => const HomePage()),
    GetPage(name: Routes.booking, page: () => const NotePage()), // navigator 2.0
  ];
}
