import 'package:flutter/material.dart';
import 'BookSearchPage.dart';

const kMainColor = InputDecoration(
  fillColor: Color(0xffcc888d),
);

const kBottomBarText = TextStyle(
  fontSize: 18.0,
  color: Color(0xffcc888d),
  fontFamily: 'DoHyeon',
  fontWeight: FontWeight.normal,
);

const kAppBarText = TextStyle(
  fontSize: 18.0,
  fontFamily: 'DoHyeon',
  fontWeight: FontWeight.normal,
);

const kAppBarSearchText = TextStyle(
  fontSize: 15.0,
  fontFamily: 'DoHyeon',
  fontWeight: FontWeight.normal,
);

const kDrawerMainText = TextStyle(
  fontSize: 15.0,
  fontFamily: 'DoHyeon',
  fontWeight: FontWeight.normal,
  color: Color(0xffffffff),
);

const kDrawerText = TextStyle(
  fontSize: 15.0,
  fontFamily: 'DoHyeon',
  fontWeight: FontWeight.normal,
  color: Color(0xffcc888d),
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.menu_book_rounded,
    color: Color(0xffe0a8ac),
    size: 30.0,
  ),
  hintText: "유현준, 공간의 미래",
  helperText: "무슨 책을 찾고 있나요?",
  hintStyle: TextStyle(
    color: Color(0xffe5e5e5),
    fontFamily: 'DoHyeon',
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide(
      color: Colors.black45,
      width: 0.5,
    ),
  ),
);

const kIsbnSearchInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.search,
    color: Color(0xffe0a8ac),
    size: 30.0,
  ),
  hintText: "ISBN 코드 입력",
  hintStyle: TextStyle(
    color: Color(0xffe5e5e5),
    fontFamily: 'DoHyeon',
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide(
      color: Colors.black45,
      width: 0.5,
    ),
  ),
);
