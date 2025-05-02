import 'package:awesome_drawer_bar/awesome_drawer_bar.dart';
import 'package:get/get.dart';
import 'package:skill_test/presentation/widgets/drawer.dart';
import '../presentation/pages/home_page.dart';
import '../presentation/pages/menu_screen.dart';
import '../presentation/pages/property_detail_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () =>  Drawer(),
    ),

    GetPage(
      name: Routes.propertyDetail,
      page: () =>  PropertyDetailScreen(),
    ),
    GetPage(
      name: Routes.menu,
      page: () => const MenuScreen(),
    )
  ];
}
