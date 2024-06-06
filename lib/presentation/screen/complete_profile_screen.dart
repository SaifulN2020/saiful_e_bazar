import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:saiful_e_bazar/presentation/utility/asset_path.dart';



class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _firstNameTextEditController =
      TextEditingController();
  final TextEditingController _lastNameTextEditController =
      TextEditingController();
  final TextEditingController _mobileTextEditController =
      TextEditingController();
  final TextEditingController _cityTextEditController = TextEditingController();
  final TextEditingController _shippingAddressTEController =
      TextEditingController();
  final GlobalKey<FormState> _keyForm = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SvgPicture.asset(AssetsPath.appLogoSvg),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Complete profile",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Get started with us with your details",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                _newBuildCompleteProfile(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        //maximumSize: Size(double.maxFinite, 30)
                        ),
                    onPressed: () {},
                    child: Text("complete"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _newBuildCompleteProfile() {
    return Form(
                key: _keyForm,
                child: Column(
                  children: [
                     TextFormField(
                      controller: _firstNameTextEditController,
                      decoration: const InputDecoration(hintText: "First name"),
                    ),const SizedBox(height: 4,),
                    TextFormField(
                      controller: _lastNameTextEditController,
                      decoration: const InputDecoration(hintText: "Last Name"),
                    ),const SizedBox(height: 4,),
                    TextFormField(
                      controller: _mobileTextEditController,
                      decoration: const InputDecoration(hintText: "Mobile"),
                    ),const SizedBox(height: 4,),
                    TextFormField(
                      controller: _cityTextEditController,
                      decoration: const InputDecoration(hintText: "City"),
                    ),const SizedBox(height: 4,),
                    TextFormField(
                      controller: _shippingAddressTEController,
                      decoration: const InputDecoration(hintText: "Shipping Address"),
                      maxLines: 3,
                    ),
                  ],
                ),
              );
  }

  @override
  void dispose() {
    super.dispose();
    _firstNameTextEditController.dispose();
    _lastNameTextEditController.dispose();
    _mobileTextEditController.dispose();
    _cityTextEditController.dispose();
    _shippingAddressTEController.dispose();
  }
}
