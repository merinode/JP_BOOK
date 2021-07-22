import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
          appBar: AppBar(
            title: Text("리스트"),
          ),
          body: Center(
            child: _buildList(),
          )),
    );
  }
}

Widget _buildList() => ListView(
      children: [
        _tile("안녕하세요?", "반가워요!!"),
        _tile("안녕하세요?", "반가워요!!"),
        _tile("안녕하세요?", "반가워요!!"),
        _tile("안녕하세요?", "반가워요!!"),
        _tile("안녕하세요?", "반가워요!!"),
        _tile("안녕하세요?", "반가워요!!"),
        _tile("안녕하세요?", "반가워요!!"),
        _tile("안녕하세요?", "반가워요!!"),
      ],
    );

ListTile _tile(String title, String subtitle) => ListTile(
    title: Text(title),
    subtitle: Text(subtitle),
    leading: Image.asset("images/crossing.jpg"));
