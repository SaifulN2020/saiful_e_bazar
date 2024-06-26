import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_count_number_button/item_count_number_button.dart';
import 'package:saiful_e_bazar/presentation/state_holder/main_bottom_nab_bar_controller.dart';
import 'package:saiful_e_bazar/presentation/utility/app_color.dart';
import 'package:saiful_e_bazar/presentation/utility/asset_path.dart';
import 'package:saiful_e_bazar/presentation/widget/cart_product_item.dart';

class CartListScreen extends StatefulWidget {
  const CartListScreen({super.key});

  @override
  State<CartListScreen> createState() => _CartListScreenState();
}

class _CartListScreenState extends State<CartListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_) {
        Get.find<MainBottomNabBarController>().backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Carts"),
          leading: IconButton(
            onPressed: () {
              Get.find<MainBottomNabBarController>().backToHome();
            },
            icon: const Icon(Icons.arrow_back_ios_sharp),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (contex, index) {
                      return const CartProductItem();
                    })),
            _buildCheckoutWidget()
          ],
        ),
      ),
    );
  }

  Widget _buildCheckoutWidget() {
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
                _buildTotalPriceWidget(),
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text('Checkout')),
                )
              ],
            ),
          );
  }

  Widget _buildTotalPriceWidget() {
    return const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total price",
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
