import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_count_number_button/item_count_number_button.dart';
import 'package:saiful_e_bazar/presentation/screen/review_screen.dart';
import 'package:saiful_e_bazar/presentation/widget/product_image_carosal_slider.dart';
import 'package:saiful_e_bazar/presentation/widget/size_picker.dart';
import 'package:saiful_e_bazar/presentation/widget/wish_button.dart';

import '../utility/app_color.dart';
import '../widget/color_picker.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int _counterValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ProductImageCarousalSlider(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Expanded(
                                child: Text(
                              "This nike new year special edition",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )),
                            _itemCounter(),
                          ],
                        ),
                        _buildReviewSection(),
                        const Text(
                          "Color",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                          child: ColorPicker(colors: const [
                            Colors.black,
                            Colors.red,
                            Colors.blue,
                            Colors.green,
                            Colors.purple,
                          ], onChange: (Color selecteColor) {}),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Size",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        SizePicker(sizes: const [
                          "S",
                          "M",
                          "L",
                          "XL",
                          "XXL",
                        ], onChange: (String s) {}),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Description",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Text('''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          _buildAddToCartWidget()
        ],
      ),
    );
  }

  Widget _buildReviewSection() {
    return Wrap(
      spacing: 5,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        const Wrap(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
            Text("3.4")
          ],
        ),
        TextButton(onPressed: () {
          Get.to(ReviewScreen());
        }, child: Text("Reviews")),
        WishButton()
      ],
    );
  }

  Widget _itemCounter() {
    return ItemCount(
      initialValue: _counterValue,
      minValue: 0,
      maxValue: 20,
      color: AppColors.primaryColor,
      decimalPlaces: 0,
      onChanged: (value) {
        _counterValue = value as int;
        setState(() {});

        print('Selected value: $value');
      },
    );
  }
  Widget _buildAddToCartWidget() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(0.1),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildPriceWidget(),
          SizedBox(
            width: 150,
            child: ElevatedButton(
                onPressed: () {}, child: Text('Add To Cart')),
          )
        ],
      ),
    );
  }

  Widget _buildPriceWidget() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Price",
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        Text("\$1000",style: TextStyle(fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor),)
      ],
    );
  }
}
