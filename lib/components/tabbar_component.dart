import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'tabbar_item_component.dart';

class TabbarComponent extends StatelessWidget {
  TabbarComponent({super.key});

  final itemList = [
    {
      'label': 'Restoran',
      'icon': CupertinoIcons.house,
      'active': true,
    },
    {
      'label': 'Bilet',
      'icon': CupertinoIcons.ticket,
      'active': false,
    },
    {
      'label': 'Yol',
      'icon': CupertinoIcons.car_detailed,
      'active': false,
    },
        {
      'label': 'Uçak',
      'icon': CupertinoIcons.airplane,
      'active': false,
    },
    {
      'label': 'Saat',
      'icon': CupertinoIcons.clock,
      'active': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 50,
      child: ListView(
        shrinkWrap: true,
        clipBehavior:Clip.none,
        scrollDirection: Axis.horizontal,
        children: itemList
            .map((tabItem) => TabbarItemComponents(
                  item: tabItem,
                ))
            .toList(),
      ),
    );
  }
}
