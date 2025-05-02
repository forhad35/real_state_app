import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart'; // for named routes if needed

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF007BFF), // Blue background
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            // Menu Items
            buildMenuItem(Icons.home, 'Home', onTap: () {
              Get.toNamed(Routes.home);
            }, selected: true),

            buildMenuItem(Icons.person, 'Profile', onTap: () {}),
            buildMenuItem(Icons.location_on, 'Nearby', onTap: () {}),

            const Divider(color: Colors.white24, indent: 20, endIndent: 20),

            buildMenuItem(Icons.bookmark, 'Bookmark', onTap: () {}),
            buildMenuItem(Icons.notifications, 'Notification', onTap: () {}),
            buildMenuItem(Icons.message, 'Message', onTap: () {}),

            const Divider(color: Colors.white24, indent: 20, endIndent: 20),

            buildMenuItem(Icons.settings, 'Setting', onTap: () {}),
            buildMenuItem(Icons.help_outline, 'Help', onTap: () {}),
            buildMenuItem(Icons.logout, 'Logout', onTap: () {
              // Add your logout logic here
            }),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String title, {VoidCallback? onTap, bool selected = false}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: selected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Icon(icon, color: selected ? const Color(0xFF007BFF) : Colors.white),
            const SizedBox(width: 16),
            Text(
              title,
              style: TextStyle(
                color: selected ? const Color(0xFF007BFF) : Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
