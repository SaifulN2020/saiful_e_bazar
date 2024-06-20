import 'package:flutter/material.dart';
import 'package:saiful_e_bazar/presentation/widget/product_cart.dart';
class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key, required this.catagoryName});
  final String catagoryName;

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.catagoryName)),
      body: GridView.builder(itemCount: 15,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: 3,childAspectRatio: 0.8),
          itemBuilder: (context,index){
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
              child: FittedBox(child: ProductCart()),
            );
          }),
    );
  }
}
