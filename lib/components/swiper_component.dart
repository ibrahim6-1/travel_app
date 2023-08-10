import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class SwiperComponent extends StatelessWidget {
  const SwiperComponent({super.key});

  final int _itemCount = 10;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Swiper(
      onTap: (index) {
        print("tab $index");
      },
      itemCount: _itemCount,
      itemHeight: _size.height / 1.8,
      itemWidth: double.infinity,
      containerWidth: double.infinity,
      layout: SwiperLayout.TINDER,
      controller: new SwiperController(),
      customLayoutOption: CustomLayoutOption(
        startIndex: 0,
        stateCount: 3,
      ),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                "https://picsum.photos/500/500?random=$index",
                height: _size.height / 1.8,
                fit: BoxFit.cover,
              ),
              Container(
                height: _size.height / 1.8,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x00000000),
                      Color(0x00000000),
                      Color(0xCC000000),
                      Color(0xCC000000),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 30, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "National Park",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Trabzon, Turkey",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
