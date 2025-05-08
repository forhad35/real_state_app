import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/menu_controller.dart';
import '../pages/menu_screen.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final menuController = Get.find<MenusController>();

    return Scaffold(
      body: Obx(() {
        return Stack(
          children: [
            MenuScreen(), // Your menu UI
            GestureDetector(
              onHorizontalDragUpdate: (details) {
                if (details.delta.dx > 10) {
                  menuController.isMenuOpen.value = true;
                }
                else if (details.delta.dx < 10) {
                  menuController.closeMenu();
                }
              },
              onTap: () {
                if (menuController.isMenuOpen.value) {
                  menuController.closeMenu();
                }
              },
              child: AnimatedContainer(
                clipBehavior: Clip.hardEdge,
                duration: const Duration(milliseconds: 300),
                transform: Matrix4.translationValues(
                  menuController.isMenuOpen.value ? 200 : 0,
                  menuController.isMenuOpen.value ? 80 : 0,
                  0,

                )
                  ..scale(menuController.isMenuOpen.value ? 0.8 : 1.0),
                decoration: BoxDecoration(
                  borderRadius: menuController.isMenuOpen.value
                      ? const BorderRadius.all(Radius.circular(24)
                  )
                      : BorderRadius.zero,
                  boxShadow: menuController.isMenuOpen.value
                      ? [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 40,
                      offset: Offset(-4, 0),
                    )
                  ]
                      : [],
                ),
                child: AbsorbPointer(
                  absorbing: menuController.isMenuOpen.value,
                  child: ScreenUtilInit(
    designSize: Size(350, 750),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context,chil) {
      return child;
        }
                ),
              ),
            ),
            )],
        );
      }),
    );
  }
}
