import 'package:flutter/material.dart';

class SanctionHeader extends StatelessWidget {
  const SanctionHeader({
    super.key, required this.title, required this.onTapSellAll,
  });
  final String title;
  final VoidCallback onTapSellAll;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600)),
        TextButton(onPressed: onTapSellAll,
            child: const Text("See All",style: TextStyle(fontSize: 16),)),

      ],
    );
  }
}