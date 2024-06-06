import 'package:flutter/material.dart';
import 'package:saiful_e_bazar/presentation/screen/review_screen.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({Key? key}) : super(key: key);

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Reviews"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          SizedBox(height: 35,),
          TextFormField(decoration: InputDecoration(

          ),),
          SizedBox(height: 8,),
          TextFormField(decoration: InputDecoration(),),
          SizedBox(height: 8,),
          TextFormField(
            maxLines: 8,
            decoration: InputDecoration(),),
          SizedBox(height: 8,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                //maximumSize: Size(double.maxFinite, 30)
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReviewScreen();
                }));
              },
              child: Text("Submit"))
        ],

        ),
      ),
    );
  }
}
