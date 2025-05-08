import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/menu_controller.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});
  final MenusController menuController = Get.put(MenusController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A8ED9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 90.h),
            buildMenuItem("assets/icon/home.png", 'Home', index: 0, onTap: () {
              menuController.selectMenu(0);
              Get.toNamed(Routes.home);
            }),
            buildMenuItem("assets/icon/IC_Profile.png", 'Profile', index: 1, onTap: () {
              menuController.selectMenu(1);
            }),
            buildMenuItem("assets/icon/IC_Location.png", 'Nearby', index: 2, onTap: () {
              menuController.selectMenu(2);
            }),

            const Divider(color: Colors.white24, indent: 20, endIndent: 20),

            buildMenuItem("assets/icon/IC_Bookmark.png", 'Bookmark', index: 3,onTap: () {
              menuController.selectMenu(3);
            }),
            buildMenuItem("assets/icon/IC_Notification.png", 'Notification', index: 4,onTap: () {
      menuController.selectMenu(4);
      }),
            buildMenuItem("assets/icon/IC_Message.png", 'Message', index: 5,onTap: () {
              menuController.selectMenu(5);
            }),

            const Divider(color: Colors.white24, indent: 20, endIndent: 20),

            buildMenuItem("assets/icon/IC_Setting.png", 'Setting', index: 6,onTap: () {
              menuController.selectMenu(6);
            }),
            buildMenuItem("assets/icon/IC_Help.png", 'Help', index: 7,onTap: () {
              menuController.selectMenu(7);
            }),
            buildMenuItem("assets/icon/IC_Logout.png", 'Logout', index: 8, onTap: () {
              menuController.selectMenu(8);
            }),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(String icon, String title,
      {required int index, VoidCallback? onTap}) {
    return Obx(() {
      final selected = menuController.selectedIndex.value == index;
      return Container(
        width: 155.w,
        margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 17),
        decoration: BoxDecoration(
          color: selected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r)

          ),
        ),
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Image.asset(icon,
                  color: selected
                      ? const Color(0xFF0A8ED9)
                      : Colors.white,width: 20.w,height: 20.h,),
               SizedBox(width: 16.w),
              Text(
                title,
                style: TextStyle(
                  color:
                  selected ? const Color(0xFF0A8ED9) : Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Raleway",
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
