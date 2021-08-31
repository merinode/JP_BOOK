import 'package:book_demo/book_model.dart';
import 'package:flutter/material.dart';
import 'package:book_demo/MainPage.dart';
import 'package:get/get.dart';
import 'package:book_demo/Const.dart';

class SettingList {
  String title;
  SettingList(this.title);
}

class SettingPage extends StatefulWidget {
//  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  List<BookModel> books = [];

  @override
  void initState() {
    BookModel book1 = BookModel();
    book1.name = 'book1';
    book1.price = 100;
    BookModel book2 = BookModel();
    book2.name = 'book2';
    book2.price = 200;

    books.add(book1);
    books.add(book2);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaebed),
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
      body: books.isNotEmpty // books.isEmpty == false, books.length < 0
          ? ListView.builder(
              itemCount: books.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Text('${books[index].name} : '),
                    Text('${books[index].price}'),
                  ],
                );
              })
          : const Center(child: Text('No items')),
    );
  }

  //@override
  //Widget build(BuildContext context) {
  // TODO: implement build
  //throw UnimplementedError();
  //}

//Widget _buildList() => ListView(
  //children: [
  //_tile("내서재 설정"),
  //_tile("메세지 설정"),
  //_tile("책판매 설정"),
  //],);

}
