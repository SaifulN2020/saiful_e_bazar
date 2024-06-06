import 'package:flutter/material.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reviews"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                      Text("Name")
                    ],
                  ),
                  const Text(
                      "hello i flutter developer saiful.i make e commerce mobile appp")
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                      Text("Name")
                    ],
                  ),
                  const Text(
                      "hello i flutter developer saiful.i make e commerce mobile appp")
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                      Text("Name")
                    ],
                  ),
                  Text(
                      "hello i flutter developer saiful.i make e commerce mobile appp")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
