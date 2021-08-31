import 'package:book_demo/Const.dart';
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
        child: GestureDetector(
            child: Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '개인 정보 관리',
                    textAlign: TextAlign.center,
                    style: kAppBarText,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text('개인정보 수정'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text('메시지 관리'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text('책장 관리'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text('포스팅 관리'),
                  ),
                ],
              ),
            ),
            onTap: () {
              Get.back();
            }),
      ),
    );
  }
}
