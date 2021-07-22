import 'package:book_demo/BookSearchPage.dart';
import 'package:flutter/material.dart';
import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'Const.dart';

class MainPage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

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
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        backgroundColor: Color(0xffe5e5e5),
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.auto_stories),
            title: Text(
              '내서재',
              style: kBottomBarText,
            ),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text(
              '책검색',
              style: kBottomBarText,
            ),
          ),
          FlashyTabBarItem(
            icon: Icon(
              Icons.attach_file_outlined,
            ),
            title: Text(
              '북클립',
              style: kBottomBarText,
            ),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.article),
            title: Text(
              '이야기',
              style: kBottomBarText,
            ),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.emoji_food_beverage_outlined),
            title: Text(
              'Coffee?',
              style: kBottomBarText,
            ),
          ),
        ],
      ),
    );
  }
}
