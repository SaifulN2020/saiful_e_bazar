import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saiful_e_bazar/presentation/utility/asset_path.dart';
import '../widget/home_carosal_slider.dart';

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
            appbarIconButton(icon: Icons.call, onTap: () {}),
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Header",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w400)),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
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
