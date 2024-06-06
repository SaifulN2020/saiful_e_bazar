import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utility/app_color.dart';


class HomeCarousalSlider extends StatefulWidget {
  const HomeCarousalSlider({Key? key}) : super(key: key);

  @override
  State<HomeCarousalSlider> createState() => _HomeCarousalSliderState();
}

class _HomeCarousalSliderState extends State<HomeCarousalSlider> {
  final ValueNotifier _selectedPageIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 180.0,
              viewportFraction: 1,
              onPageChanged: (contex, _) {
                _selectedPageIndex.value=1;

              }),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor ,
                      borderRadius: BorderRadius.circular(16)),
                  alignment: Alignment.center,
                  child: Text(
                    'text $i',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  ),);
              },
            );
          }).toList(),
        ),
        ValueListenableBuilder(
            valueListenable: _selectedPageIndex,
            builder: (context, currentPage, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 5; i++)
                    Container(
                      height: 15,
                      width: 15,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    )
                ],
              );
            })
      ],
    );
  }
}