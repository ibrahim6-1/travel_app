import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
          ),
          child: Container(
            color: Colors.white.withOpacity(0.75),
            child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Row(
                children: [
                  _bottomAppBar(index: 0, icon: CupertinoIcons.home),
                  _bottomAppBar(index: 1, icon: CupertinoIcons.app),
                  _bottomAppBar(index: 2, icon: CupertinoIcons.alarm),
                  _bottomAppBar(index: 3, icon: CupertinoIcons.command),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _bottomAppBar({
    required int index,
    required IconData icon,
  }) {
    return Expanded(
      child: ClipOval(
        child: RawMaterialButton(
          padding: const EdgeInsets.only(top: 25, bottom: 15),
          onPressed: () => _updateIndex(index),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 25,
              ),
              Container(
                margin: const EdgeInsets.only(top:5),
                height: 5,
                width: 5,
                decoration: index == _index ? BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(6),
                ):null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
