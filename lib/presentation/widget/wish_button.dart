import 'package:flutter/material.dart';

import '../utility/app_color.dart';

class WishButton extends StatefulWidget {
  const WishButton({super.key});

  @override
  State<WishButton> createState() => _WishButtonState();
}

class _WishButtonState extends State<WishButton> {
  @override
  Widget build(BuildContext context) {
    return  _getIconButton(Icons.favorite_outline);
  }
  Widget _getIconButton(IconData icon) {
    return Card(
      color: AppColors.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Icon(
          icon,
          size: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
