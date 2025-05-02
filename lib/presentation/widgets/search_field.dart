import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search address, or near you',
        prefixIcon: Image.asset("assets/icon/IC_Search.png",width:24,height:24),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: EdgeInsets.all(8),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
