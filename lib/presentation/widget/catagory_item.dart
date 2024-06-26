import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saiful_e_bazar/presentation/screen/product_list_screen.dart';

import '../utility/app_color.dart';

class CatagoryItem extends StatelessWidget {
  const CatagoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>ProductListScreen(catagoryName: "Electronics"));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.primaryColor.withOpacity(0.2)
            ),
            child: const Icon(Icons.desktop_windows_outlined,
              size: 48,color: AppColors.primaryColor,),
          ),
          const Text("Electronics",
            style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,letterSpacing: 0.4),)
        ],
      ),
    );
  }
}