import 'package:get/get.dart';
import 'package:skill_test/presentation/widgets/drawer.dart';
import '../presentation/pages/home_page.dart';
import '../presentation/pages/property_detail_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () =>  MainLayout(child: HomePage()),
    ),

    GetPage(
      name: Routes.propertyDetail,
      page: () =>  MainLayout(child: PropertyDetailScreen()),
    ),

  ];
}
