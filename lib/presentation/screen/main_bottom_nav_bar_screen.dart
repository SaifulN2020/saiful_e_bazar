import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saiful_e_bazar/presentation/screen/cart_list_screen.dart';
import 'package:saiful_e_bazar/presentation/screen/catagory_list_screen.dart';
import 'package:saiful_e_bazar/presentation/screen/home_screen.dart';
import 'package:saiful_e_bazar/presentation/screen/wish_list_screen.dart';
import 'package:saiful_e_bazar/presentation/state_holder/main_bottom_nab_bar_controller.dart';
import 'package:saiful_e_bazar/presentation/utility/app_color.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({super.key});

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  final MainBottomNabBarController _navbarController =
      Get.find<MainBottomNabBarController>();
  final List<Widget> _screen = const [
    HomeScreen(),
    CatagoryListScreen(),
    CartListScreen(),
    WishListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetBuilder<MainBottomNabBarController>(builder: (_) {
      return _screen[_navbarController.selectedIndex];
    }), bottomNavigationBar: GetBuilder<MainBottomNabBarController>(
      builder: (_) {
        return BottomNavigationBar(
            currentIndex: _navbarController.selectedIndex,
            onTap: _navbarController.changeIndex,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: "Catagory"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: "cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline), label: "WishList"),
            ]);
      },
    ));
  }
}
