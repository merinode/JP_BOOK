import 'package:book_demo/BottomBar/Const.dart';
import 'package:book_demo/Drawer%20/PersonalIfoEditPage.dart';
import 'package:flutter/material.dart';
import 'package:book_demo/MainPage.dart';
import 'package:flutter/widgets.dart';
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
      appBar: AppBar(
          backgroundColor: Color(0xffc17f84),
          title: Center(
              child: Text('그라카이브',
                  style: kAppBarText, textAlign: TextAlign.center)),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.sensor_door,
                  color: Colors.white,
                ),
                onPressed: () {
                  Get.to(MainPage());
                })
          ]),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 50,
              // ),
              TextButton(
                onPressed: () {
                  Get.to(PersonalInfoEditPage());
                },
                child: Text(
                  '개인정보 수정',
                  textAlign: TextAlign.center,
                  style: kNormalText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
