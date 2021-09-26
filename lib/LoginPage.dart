//앱 로그인 페이지
//현재는 inactive
import 'package:book_demo/BookSearchPage.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'Const.dart';
import 'package:book_demo/MainPage.dart';

class LoginPage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final listWidget = [
    Text(
      'Index 0: 내서재',
      style: optionStyle,
    ),
    Text(
      'Index 1: 책검색',
      style: optionStyle,
    ),
    Text(
      'Index 2: 북클립',
      style: optionStyle,
    ),
    Text(
      'Index 3: 이야기',
      style: optionStyle,
    ),
    Text(
      'Index 4: LOCAL',
      style: optionStyle,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaebed),
      appBar: AppBar(
        backgroundColor: Color(0xffc17f84),
        title: Center(
            child:
                Text('그라카이브', style: kAppBarText, textAlign: TextAlign.center)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.sensor_door,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return MainPage();
                }),
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(),
        ],
      ),
      floatingActionButton: Container(
        width: 60.0,
        height: 60.0,
        child: FloatingActionButton(
          backgroundColor: Color(0xff0e0a8ac),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return BookSearchPage();
              }),
            );
          },
          child: Icon(
            Icons.plus_one,
            size: 35.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.auto_stories, title: '내서재'),
          TabItem(icon: Icons.search, title: '책검색'),
          TabItem(icon: Icons.attach_file_outlined, title: '북클립'),
          TabItem(icon: Icons.article, title: '이야기'),
          TabItem(icon: Icons.emoji_food_beverage_outlined, title: 'LOCAL'),
        ],
        onTap: _onItemTapped,
        activeColor: Colors.white54,
        initialActiveIndex: _selectedIndex,
        style: TabStyle.reactCircle,
        backgroundColor: Color(0xffc17f84),
      ),
    );
  }
}
