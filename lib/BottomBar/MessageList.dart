//주고받은 메시지가 보여지는 페이지
import 'package:flutter/material.dart';
import 'package:book_demo/BottomBar/Const.dart';
import 'package:get/get.dart';
import 'package:book_demo/MainPage.dart';

class MessageListPage extends StatefulWidget {
  //const MessageListPage({Key? key}) : super(key: key);

  @override
  _MessageListPageState createState() => _MessageListPageState();
}

class _MessageListPageState extends State<MessageListPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 8.0,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(hintText: '메세지를 입력하세요.'),
                onSubmitted: (String text) {
                  print("onsubmitted: $text");
                },
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            FlatButton(
              onPressed: () {
                print(_textEditingController.text);
              },
              child: Text("Send"),
              color: Color(0xffc17f84),
            ),
          ],
        ),
      ),
    );
  }
}
