import 'package:flutter/material.dart';

import '../../core/theme.dart';

class FeatureChip extends StatelessWidget {
  final String icon;
  final String label;
  final Color iconColor,textColor;
  final double gap,size;

  const FeatureChip({super.key, required this.icon, required this.label, required this.gap,required this.iconColor,required this.textColor,required this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Color.fromRGBO(255, 255, 255, 0.2),
          ),
          child: Image.asset(icon, height: 18, color: iconColor),
        ),
        SizedBox(width:gap ),
        Text(label, style: TextStyle(color:textColor)),
      ],
    );
  }
}
