import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:saiful_e_bazar/presentation/screen/home_screen.dart';
import 'package:saiful_e_bazar/presentation/utility/asset_path.dart';

import '../widget/app_logo.dart';
import 'email_verification_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  void _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 5));
    Get.off(() => const HomeScreen());

  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            AppLogo(),
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(
              height: 15,
            ),
            Text("Version :1.0.0"),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
