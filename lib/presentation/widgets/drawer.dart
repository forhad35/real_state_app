import 'package:flutter/material.dart';
import 'package:skill_test/presentation/pages/home_page.dart';
import 'package:skill_test/presentation/pages/menu_screen.dart';

class Drawer extends StatelessWidget {
  const Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Stack(children: [MenuScreen(), AnimationScreen()]));
  }
}

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  _AnimationScreen createState() => _AnimationScreen();
}

class _AnimationScreen extends State<AnimationScreen> {
  double xOffset = 0;
  double yOffset = 0;

  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform:
          Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(isDrawerOpen ? 0.85 : 1.00),
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius:
            isDrawerOpen ? BorderRadius.circular(20) : BorderRadius.circular(0),
      ),
      clipBehavior: Clip.antiAlias,
      child: GestureDetector(
        onTap: () {
          setState(() {
            xOffset = 200;
            yOffset = 50;
            isDrawerOpen = true;
          });
        },
        onDoubleTap: () {
          setState(() {
            xOffset = 0;
            yOffset = 0;
            isDrawerOpen = false;
          });
        },

        child: HomePage(),
      ),
    );
  }
}
