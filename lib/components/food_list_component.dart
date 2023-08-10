import 'package:flutter/material.dart';

import 'food_list_item_componet.dart';

class FoodListComponent extends StatelessWidget {
  const FoodListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(right: 20, left: 20),
      shrinkWrap: true,
      clipBehavior: Clip.none,
      itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25,
          childAspectRatio: 3 / 3.75,
        ),
        itemBuilder: (context, index) {
          return FoodListItemComponent(
            index: index,
          );
        });
  }
}
