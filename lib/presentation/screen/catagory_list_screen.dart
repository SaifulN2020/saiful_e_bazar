import 'package:flutter/material.dart';
import 'package:saiful_e_bazar/presentation/widget/catagory_item.dart';
class CatagoryListScreen extends StatefulWidget {
  const CatagoryListScreen({super.key});

  @override
  State<CatagoryListScreen> createState() => _CatagoryListScreenState();
}

class _CatagoryListScreenState extends State<CatagoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Catagory List"),),
      body: GridView.builder(itemCount: 15,
          gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 4,childAspectRatio: 0.8),
          itemBuilder: (context,index){
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: FittedBox(child: CatagoryItem()),
        );
          }),
    );
  }
}
