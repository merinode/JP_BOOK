import 'package:flutter/material.dart';
import 'Const.dart';
import 'package:get/get.dart';
import 'package:book_demo/MainPage.dart';

class BookAddConfirmPage extends StatefulWidget {
  //const BookAddConfirmPage({Key? key}) : super(key: key);

  @override
  _BookAddConfirmPageState createState() => _BookAddConfirmPageState();
}

class _BookAddConfirmPageState extends State<BookAddConfirmPage> {
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
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          SizedBox(height: 50),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              '등록 내용 확인',
              style: TextStyle(
                color: Color(0xff0e0a8ac),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: 30),
          //Expanded(child: Divider()),
          Container(
            color: Colors.amber,
            width: 200,
            height: 200,
          ),
          //SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(children: [
                  Text("책 이름:"),
                  SizedBox(width: 30),
                  Text('문명의 충돌'),
                ]),
                SizedBox(height: 20),
                Row(children: [
                  Text("저자:"),
                  SizedBox(width: 45),
                  Text('새뮤얼 헌팅턴'),
                ]),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Text("가격:"),
                  SizedBox(
                    width: 200,
                  ),
                  Text('JPY'),
                ]),
                SizedBox(height: 20),
                Row(children: [
                  Text('지역:'),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(width: 20),
                  Text('Yokohama'),
                ]),
                SizedBox(height: 20),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    '이 책은요:',
                    //textAlign: TextAlign.left,
                  ),
                ]),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Material(
                      elevation: 2.0,
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color(0xffcc888d),
                      child: MaterialButton(
                        minWidth: 100,
                        //minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return MainPage();
                            }),
                          );
                        },
                        child: Text(
                          "등록",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Dohyeon',
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
