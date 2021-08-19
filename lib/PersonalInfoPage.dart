import 'package:flutter/material.dart';
import 'package:book_demo/MainPage.dart';
import 'package:get/get.dart';

class PerInfoPage extends StatefulWidget {
  //const PerInfoPage({Key? key}) : super(key: key);

  @override
  _PerInfoPageState createState() => _PerInfoPageState();
}

class _PerInfoPageState extends State<PerInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
            child: Text("Person Info Page!!!"),
            onTap: () {
              Get.back();
            }),
      ),
    );
  }
}
