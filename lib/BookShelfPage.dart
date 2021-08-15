//구매한 책, 팔려고 등록한 책이 리스트로 보여지는 페이지
import 'package:flutter/material.dart';
import 'package:book_demo/Const.dart';
import 'MainPage.dart';
import 'package:book_demo/MainPage.dart';
import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:book_demo/BookSearchResultPage.dart';

class BookShelfPage extends StatefulWidget {
  //const ({Key? key}) : super(key: key);

  @override
  _BookShelfPageState createState() => _BookShelfPageState();
}

class _BookShelfPageState extends State<BookShelfPage> {
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
