import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saiful_e_bazar/presentation/screen/otp_verification_screen.dart';
import 'package:saiful_e_bazar/presentation/utility/asset_path.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(

            children: [
              const SizedBox(height: 100,),
              SvgPicture.asset(AssetsPath.appLogoSvg),
              const SizedBox(height: 8,),
              Text(
                "Welcome Back",
                style: textTheme.headlineLarge,
              ),
              const SizedBox(height: 4,),
              Text(
                "Please Enter Your Email Address",
                style: textTheme.headlineSmall,
              ),
              const SizedBox(height: 12,),
              TextFormField(controller: _emailTEController,
                decoration: const InputDecoration(hintText: "Email"),),
              const SizedBox(height: 16,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                         OtpVerificationScreen(email: _emailTEController.text),
                      ),
                    );
                  },
                  child: const Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
