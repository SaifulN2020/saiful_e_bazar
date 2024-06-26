import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saiful_e_bazar/presentation/screen/review_screen.dart';

class CreateNewReviewScreen extends StatefulWidget {
  const CreateNewReviewScreen({super.key});

  @override
  State<CreateNewReviewScreen> createState() => _CreateNewReviewScreenState();
}

class _CreateNewReviewScreenState extends State<CreateNewReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 150,),
          TextFormField(decoration: InputDecoration(
            hintText: "First Name"
          ),
          ),
          SizedBox(height: 18,),
          TextFormField(decoration: InputDecoration(hintText: "Last Name"),),
          SizedBox(height: 18,),
          TextFormField(maxLines: 6,
          decoration: InputDecoration(
            hintText: "Write Review"
          ),),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Get.to(ReviewScreen());
          }, child: Text("Submit"))
        ],


      ),
    ),
    );
  }
}
