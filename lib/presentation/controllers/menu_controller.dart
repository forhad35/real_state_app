import 'package:get/get.dart';


class MenusController extends GetxController {
  var isMenuOpen = false.obs;
  RxInt selectedIndex = 0.obs;

  void selectMenu(int index) {
    selectedIndex.value = index;
  }
  void toggleMenu() {
    isMenuOpen.value = !isMenuOpen.value;
  }

  void closeMenu() {
    isMenuOpen.value = false;
  }
}
