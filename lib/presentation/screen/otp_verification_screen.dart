

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:saiful_e_bazar/presentation/screen/complete_profile_screen.dart';
import 'package:saiful_e_bazar/presentation/utility/app_color.dart';

import '../utility/asset_path.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String email;

  const OtpVerificationScreen({Key? key, required this.email})
      : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetsPath.appLogoSvg),
              const SizedBox(height: 12),
              Text("Enter OTP Code",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 15),
              Text("6 digit otp code sent",
                  style: Theme.of(context).textTheme.headlineSmall),
              PinCodeTextField(
                  controller: _otpTEController,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      shape: PinCodeFieldShape.box,
                      activeFillColor: Colors.white,
                      inactiveColor: Colors.transparent,
                      selectedFillColor: AppColors.primaryColor),
                  appContext: context,
                  pastedTextStyle: TextStyle(
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.bold),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  length: 6,
                  obscureText: true,
                  obscuringCharacter: '*',
                  obscuringWidget: const FlutterLogo(size: 24),
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      //maximumSize: Size(double.maxFinite, 30)
                      ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const CompleteProfileScreen();
                    }));
                  },
                  child: const Text("Next")),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("The code will expire in ",
                      style: Theme.of(context).textTheme.headlineSmall),
                  TimerCountdown(
                    format: CountDownTimerFormat.secondsOnly,
                    endTime: DateTime.now().add(
                      const Duration(
                        seconds: 120
                      ),
                    ),
                    onEnd: () {
                      print("Timer finished");
                    },
                  ),

                ],
              ),

              const SizedBox(height: 10),
              Text("Resend Code",
                  style: Theme.of(context).textTheme.headlineSmall)
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _otpTEController.dispose();
    super.dispose();
  }
}
