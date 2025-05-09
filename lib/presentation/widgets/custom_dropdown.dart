import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/city_location_controller.dart';

class CustomDropdown extends StatelessWidget {
  final LocationController controller = Get.put(LocationController());

  CustomDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GestureDetector(
        onTap: () => _showDropdown(context),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              controller.selectedLocation.value,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 4),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 18,
              color: Colors.grey,
            ),
          ],
        ),
      );
    });
  }

  void _showDropdown(BuildContext context) async {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    final selectedItem = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
        offset.dx,
        offset.dy + renderBox.size.height + 4,
        offset.dx + renderBox.size.width,
        offset.dy,
      ),
      items: controller.locations.map((item) {
        return PopupMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
    );

    if (selectedItem != null) {
      controller.setLocation(selectedItem);
    }
  }
}
