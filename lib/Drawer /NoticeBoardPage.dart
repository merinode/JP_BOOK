import 'package:flutter/material.dart';
import 'package:book_demo/MainPage.dart';
import 'package:book_demo/BottomBar/Const.dart';
import 'package:get/get.dart';

class NoticeBoardPage extends StatefulWidget {
//  const NoticeBoardPage({Key? key}) : super(key: key);

  @override
  _NoticeBoardPageState createState() => _NoticeBoardPageState();
}

class _NoticeBoardPageState extends State<NoticeBoardPage> {
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
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: [
            Container(
              height: 70,
              color: Color(0xffc17f84),
              child: const Center(child: Text('정보 공개 설정')),
            ),
            SizedBox(
              height: 20,
              width: 30,
            ),
            Container(
              height: 70,
              color: Color(0xffc17f84),
              child: const Center(child: Text('xx xx 설정')),
            ),
            SizedBox(
              height: 20,
              width: 30,
            ),
            Container(
              height: 70,
              color: Color(0xffc17f84),
              child: const Center(child: Text('xx xx 설정')),
            ),
          ],
        ));
  }
}
