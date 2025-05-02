import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedCategory = 'House'.obs;

  void selectCategory(String category) {
    selectedCategory.value = category;
  }
  var isMenuOpen = false.obs;



}
