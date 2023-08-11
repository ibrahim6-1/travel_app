import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlacePage extends StatelessWidget {
  const PlacePage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.network(
              "https://picsum.photos/600/1000?random=$index",
              fit: BoxFit.cover,
              width: double.infinity,
              height: _size.height / 1.25,
            ),
            Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.white,
                  ],
                  stops: [
                    0.4,
                    0.7,
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, top: 45),
              child: IconButton(
                icon: const Icon(CupertinoIcons.back,color: Colors.black,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Container(
                    color: Colors.white.withOpacity(0.65),
                    padding: const EdgeInsets.all(35),
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Natonal Park # 1",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Trabzon, Uzungöl",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Uzungöl, Türkiye'nin Trabzon ilinde yer alan bir heyelan set gölüdür. Çaykara ilçesinin Uzungöl Mahallesi'nde bulunur. ",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            _locationTag('61 Hotels'),
                          ],
                        ),
                        const SizedBox(height: 25),
                        const Row(
                          children: [
                            Icon(
                              CupertinoIcons.map,
                              color: Colors.black26,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Trabzon, Turkey",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(height: 50),
                        TextButton(
                          onPressed: () {},
                          child: Text("Book your Flight"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _locationTag(String s) {
    return Container(
      // ignore: sort_child_properties_last
      child: Text(
        s,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.blueAccent[100]?.withOpacity(0.5),
      ),
    );
  }
}
