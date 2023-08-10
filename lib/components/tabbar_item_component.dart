import 'package:flutter/material.dart';

class TabbarItemComponents extends StatelessWidget {
  const TabbarItemComponents({super.key, required this.item});

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          color: item['active'] ? Colors.blueAccent : Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF000000).withOpacity(0.05),
                blurRadius: 30,
                offset: const Offset(1, 0))
          ]),
      child: Row(
        children: [
          Icon(
            item['icon'],
            color: item['active'] ? Colors.white : Colors.black,
          ),
          const SizedBox(width: 10),
          Text(
            item['label'],
            style: TextStyle(
              color: item['active'] ? Colors.white : Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
