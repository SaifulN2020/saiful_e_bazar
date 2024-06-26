import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saiful_e_bazar/presentation/state_holder/main_bottom_nab_bar_controller.dart';
import 'package:saiful_e_bazar/presentation/widget/product_cart.dart';
class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key,});


  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_){
        Get.find<MainBottomNabBarController>().backToHome();
      },
      child: Scaffold(
        appBar: AppBar(title: Text("WishList"),
        leading: IconButton(
          onPressed: (){
            Get.find<MainBottomNabBarController>().backToHome();
          },
          icon: Icon(Icons.arrow_back_ios_sharp),
        ),),
        body: GridView.builder(itemCount: 15,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(

                crossAxisCount: 3,childAspectRatio: 0.8),
            itemBuilder: (context,index){
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                child: FittedBox(child: ProductCart(
                  showAddToWishList: false,
                )),
              );
            }),
      ),
    );
  }
}
