import 'package:flutter/material.dart';
import 'package:book_demo/MainPage.dart';
import 'package:get/get.dart';

class PersonalInfoPage extends StatefulWidget {
  //const PerInfoPage({Key? key}) : super(key: key);

  @override
  _PersonalInfoPageState createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
            child: Text("Personal Info Page!!!"),
            onTap: () {
              Get.back();
            }),
      ),
    );
  }
}
