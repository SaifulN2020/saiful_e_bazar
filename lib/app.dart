import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saiful_e_bazar/presentation/screen/splash_screen.dart';

import 'package:saiful_e_bazar/presentation/utility/app_color.dart';

import 'controller_binder.dart';

class SaifulEBazar extends StatefulWidget {
  const SaifulEBazar({Key? key}) : super(key: key);

  @override
  State<SaifulEBazar> createState() => _SaState();
}

class _SaState extends State<SaifulEBazar> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const SplashScreen(),
      initialBinding: ControllerBinder(),
      theme: ThemeData(
          colorSchemeSeed: AppColors.primaryColor,
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(
                  color: AppColors.primaryColor),
          textTheme: _textTheme,
          inputDecorationTheme: _inputDecorationTheme(),
          appBarTheme: const AppBarTheme(
              foregroundColor: Colors.black,
          backgroundColor: Colors.amber),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  foregroundColor: AppColors.primaryColor)),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                //maximumSize: Size(double.maxFinite, 30)
                fixedSize: const Size.fromWidth(double.maxFinite),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                textStyle:
                    const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 16)),
          )),
    );
  }

  final TextTheme _textTheme = const TextTheme(
      headlineLarge: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w600,
          color: Colors.black),
      headlineSmall: TextStyle(
        fontSize: 14,
        color: Colors.blueGrey,
      ));

  InputDecorationTheme _inputDecorationTheme() => InputDecorationTheme(
        hintStyle:
            const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w400),
        border: _outlineInputBorder,
        enabledBorder: _outlineInputBorder,
        focusedBorder: _outlineInputBorder,
        errorBorder: _outlineInputBorder.copyWith(
            borderSide: const BorderSide(color: Colors.red)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      );

  final OutlineInputBorder _outlineInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.primaryColor),
  );
}
