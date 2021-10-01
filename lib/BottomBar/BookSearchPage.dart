//키워드를 넣어 책을 검색할 수 있는 페이지
import 'dart:ui';
import 'package:book_demo/BottomBar/BookSearchResultPage.dart';
import 'package:flutter/material.dart';
import 'Const.dart';

class BookSearchPage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  _BookSearchPageState createState() => _BookSearchPageState();
}

class _BookSearchPageState extends State<BookSearchPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //SizedBox(
          //height: 50,
          //),
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              style: TextStyle(
                color: Colors.white24,
              ),
              decoration: kTextFieldInputDecoration,
              onChanged: (value) {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
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
                        return BookSearchResultPage();
                      }),
                    );
                  },
                  child: Text(
                    "검색",
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
    );
  }
}
