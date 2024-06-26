import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import '../utility/app_color.dart';
import '../utility/asset_path.dart';

class CartProductItem extends StatefulWidget {
  const CartProductItem({super.key});

  @override
  State<CartProductItem> createState() => _CartProductItemState();
}

class _CartProductItemState extends State<CartProductItem> {
  int _counterValue = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          _buildProductImage(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildProductDetails(),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildProductDetails() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_buildProductName(), _buildProductcolorAndSize()],
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "\$100",
              style: TextStyle(color: AppColors.primaryColor, fontSize: 20),
            ),
            _itemCounter(),
          ],
        )
      ],
    );
  }

  Widget _buildProductcolorAndSize() {
    return const Wrap(
      spacing: 16,
      children: [
        Text(
          "Color:Red",
          style: TextStyle(
              fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600),
        ),
        Text("Size :M",
            style: TextStyle(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600))
      ],
    );
  }

  Widget _buildProductName() {
    return const Text(
      "Nike shoe 2158632541",
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
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

  Widget _buildProductImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        AssetsPath.productDammyImgPng,
        width: 100,
      ),
    );
  }
}
