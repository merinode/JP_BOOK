//즐겨찾기 해 놓은 책이 보여지는 페이지
//랜덤으로 추천되는 책이 보여지는 페이지
import 'package:flutter/material.dart';
import 'package:book_demo/MainPage.dart';
import 'package:card_swiper/card_swiper.dart';

import 'Components.dart';

class BookClipPage extends StatefulWidget {
//  const ({Key? key}) : super(key: key);

  @override
  _BookClipPageState createState() => _BookClipPageState();
}

class _BookClipPageState extends State<BookClipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SwiperComponent());
  }
}
