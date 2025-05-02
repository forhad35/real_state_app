import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class CategorySelector extends StatelessWidget {
  final controller = Get.find<HomeController>();

  final categories = ['House', 'Apartment', 'Hotel', 'Villa','Cottage'];

  @override
  Widget build(BuildContext context) {
    return Obx(() => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((cat) {
          final selected = cat == controller.selectedCategory.value;
          return GestureDetector(
            onTap: () => controller.selectCategory(cat),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: selected ? Colors.blue : Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(cat, style: TextStyle(color: selected ? Colors.white : Colors.black)),
            ),
          );
        }).toList(),
      ),
    ));
  }
}
