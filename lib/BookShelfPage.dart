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
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _buildList(),
    );
  }
}

Widget _buildList() => ListView(
      children: [
        _tile("책이름", "지역: 요코하마"),
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
