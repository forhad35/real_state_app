import 'package:get/get.dart';

class LocationController extends GetxController {
  RxString selectedLocation = 'Jakarta'.obs;

  List<String> locations = ['Jakarta', 'Dhaka', 'Delhi', 'Kuala Lumpur'];

  void setLocation(String value) {
    selectedLocation.value = value;
  }
}
