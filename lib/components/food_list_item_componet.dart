import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodListItemComponent extends StatelessWidget {
  const FoodListItemComponent({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://picsum.photos/500/500?random=$index",
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(36)),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(36)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF000000),
                Color(0x00000000),
                Color(0xCC000000),
              ],
            ),
          ),
          padding: const EdgeInsets.only(left: 25, top: 25),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Resimler",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "4.8",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 1.6,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(CupertinoIcons.star_fill,
                  color: Colors.white,
                  size: 16,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
