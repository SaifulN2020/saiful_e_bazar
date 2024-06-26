import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utility/app_color.dart';

class ProductImageCarousalSlider extends StatefulWidget {
  const ProductImageCarousalSlider({Key? key}) : super(key: key);

  @override
  State<ProductImageCarousalSlider> createState() =>
      _ProductImageCarousalSliderState();
}

class _ProductImageCarousalSliderState
    extends State<ProductImageCarousalSlider> {
  final ValueNotifier<int> _selectedPageIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            _buildCarousalslider(),
            Positioned(
                bottom: 8, left: 0, right: 0,
                child: _buildDotIndicator())
          ],
        )
      ],
    );
  }

  Widget _buildDotIndicator() {
    return ValueListenableBuilder(
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
                    color: i == currentPage ? AppColors.primaryColor : Colors.white,
                    border: Border.all(
                        color: i == currentPage
                            ? AppColors.primaryColor
                            : Colors.white,
                        width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                )
            ],
          );
        });
  }

  Widget _buildCarousalslider() {
    return CarouselSlider(
      options: CarouselOptions(
          height: 220.0,
          viewportFraction: 1,
          onPageChanged: (index, _) {
            _selectedPageIndex.value = index;
          }),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade300 ,
              alignment: Alignment.center,
              child: Text(
                'text $i',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
