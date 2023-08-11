

import 'package:flutter/material.dart';
import 'package:travel_app/components/tabbar_component.dart';

import '../components/bottom_navbar.dart';
import '../components/food_list_component.dart';
import '../components/swiper_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SwiperComponent(),
            const SizedBox(height: 25),

            TabbarComponent(),
            const SizedBox(height: 25),
            const FoodListComponent(),
           
          ],
        ),
      ),
      bottomNavigationBar:  const BottomNavbar(),
    );
  }
}