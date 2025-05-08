import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:skill_test/presentation/controllers/menu_controller.dart';
import 'package:skill_test/routes/app_pages.dart';
import 'core/theme.dart';

void main() {
  Get.put(MenusController()); // Global MenuController
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

        return GetMaterialApp(
          title: 'Real Estate UI',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.home,
          getPages: AppPages.routes, // Your home page
        );


  }
}
