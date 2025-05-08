import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CityDropdownState extends StatelessWidget {
   CityDropdownState({super.key, });
  var selectedCity = 'Jakarta'.obs;
  final List<String> cities = ['Jakarta', 'Dhaka', 'Delhi', 'Kuala Lumpur'].obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return DropdownButton<String>(
        value: selectedCity.value,
        icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey),
        elevation: 8,
        underline: SizedBox(),
        // menuWidth: 20,
        // remove underline
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20, // adjust font size as per your image
          fontWeight: FontWeight.normal,
        ),
        onChanged: (String? newValue) {
            selectedCity.value = newValue!;
        },
        items: cities.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      );
    });
  }
}
