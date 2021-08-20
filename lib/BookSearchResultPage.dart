//키워드를 넣어 책을 검색하면 검색 결과가 나타나는 페이지
//리스트
import 'package:flutter/material.dart';
import 'Const.dart';
import 'BookSearchPage.dart';
import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:book_demo/MainPage.dart';

class BookSearchResultPage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  _BookSearchResultPageState createState() => _BookSearchResultPageState();
}

class _BookSearchResultPageState extends State<BookSearchResultPage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Center(
          child: Text(
            '(      )의 검색 결과',
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'DoHyeon',
              fontWeight: FontWeight.normal,
              color: Color(0xffcc888d),
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            'images/simplejpmap.png',
            width: 250.0,
          ),
        ),
      ],
    );
  }
}
