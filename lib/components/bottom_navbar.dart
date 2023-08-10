import 'dart:ui';

import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _index = 0;

  void _updateIndex(int indexValue) {
    setState(() {
      _index = indexValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25, bottom: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
            filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        )),
      ),
    );
  }
}
