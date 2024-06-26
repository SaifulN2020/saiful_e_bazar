import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saiful_e_bazar/presentation/utility/app_color.dart';
import 'package:saiful_e_bazar/presentation/utility/asset_path.dart';
import 'package:saiful_e_bazar/presentation/widget/catagory_item.dart';
import '../widget/home_carosal_slider.dart';
import '../widget/product_cart.dart';
import '../widget/sanction_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(AssetsPath.appLogoNavSvg),
          actions: [
            appbarIconButton(icon: Icons.person, onTap: () {}),
            const SizedBox(width: 5,),
            appbarIconButton(icon: Icons.call, onTap: () {}),
            const  SizedBox(width: 5,),
            appbarIconButton(icon: Icons.notifications, onTap: () {}),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 15),
                _buildSearchTextField(),
                const SizedBox(height: 16),
                const HomeCarousalSlider(),
                const SizedBox(height: 16),
                SanctionHeader(
                  title: "All Catagory",
                  onTapSellAll: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                _buildCatagoryListView(),
                SanctionHeader(
                  title: "Popular Products",
                  onTapSellAll: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                _buildProductListView(),
                const SizedBox(height: 10,),
                SanctionHeader(
                  title: "Special",
                  onTapSellAll: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                _buildProductListView(),
                const  SizedBox(height: 10,),
                SanctionHeader(
                  title: "New",
                  onTapSellAll: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                _buildProductListView()



              ],
            ),
          ),
        ));
  }

  Widget _buildCatagoryListView() {
    return SizedBox(
      height: 110,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return const CatagoryItem();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 8
            );
          }),
    );
  }
  Widget _buildProductListView() {
    return SizedBox(
      height: 220,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return ProductCart();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 8,
            );
          }),
    );
  }

  Widget _buildSearchTextField() {
    return TextFormField(
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: "search",
            fillColor: Colors.grey.shade200,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8))));
  }
}

class appbarIconButton extends StatelessWidget {
  const appbarIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(100),
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Icon(
          icon,
          color: Colors.grey,
        ),
      ),
    );
  }
}
