import 'package:flutter/material.dart';
import 'package:book_demo/Const.dart';
import 'MainPage.dart';
import 'package:book_demo/MainPage.dart';
import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:book_demo/BookSearchResultPage.dart';

class MyBookAddPage extends StatefulWidget {
  //const ({Key? key}) : super(key: key);

  @override
  _MyBookAddPageState createState() => _MyBookAddPageState();
}

class _MyBookAddPageState extends State<MyBookAddPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      //child: _buildList(),
      child: Container(
        alignment: Alignment.center,
        child: Image.asset(
          'images/simplejpmap.png',
          width: 250.0,
        ),
      ),
    );
  }
}
