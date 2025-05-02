import 'package:flutter/material.dart';

class PropertyCard extends StatelessWidget {
  final String title, location, distance;

  const PropertyCard({
    required this.title,
    required this.location,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage("images/house_sample.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6), borderRadius: BorderRadius.circular(12)),
              child: Text(distance, style: TextStyle(color: Colors.white)),
            ),
          ),
          Positioned(
            left: 12,
            bottom: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
                Text(location, style: TextStyle(color: Colors.white70)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
