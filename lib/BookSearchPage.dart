import 'dart:ui';
import 'package:book_demo/BookSearchResultPage.dart';
import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:flutter/material.dart';
import 'MainPage.dart';
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
    return Scaffold(
      backgroundColor: Color(0xffeaebed),
      appBar: AppBar(
        backgroundColor: Color(0xffc17f84),
        title: Text(
          '그라카이브',
          style: kAppBarText,
          textAlign: TextAlign.center,
        ),
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
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Kao Nashi",
                style: kDrawerMainText,
              ),
              accountEmail: Text(
                "no.kao.desu@gmail.com",
                style: kDrawerMainText,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF0cc888d),
              ),
              //image: DecorationImage(
              //image: ExactAssetImage('images/kaonashi.jpeg'),
              //fit: BoxFit.cover,
              //  ),
              //),
              currentAccountPicture: CircleAvatar(
                backgroundImage: ExactAssetImage('images/kaonashi.jpeg'),
              ),
            ),
            ListTile(
                leading: Icon(Icons.account_box_rounded),
                title: Text("개인 정보 관리", style: kDrawerText),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.assessment),
                title: Text("이용 내역", style: kDrawerText),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.archive),
                title: Text("저장한 글", style: kDrawerText),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("설정", style: kDrawerText),
                onTap: () {
                  Navigator.pop(context);
                }),
            Divider(),
            ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text("로그아웃", style: kDrawerText),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              style: TextStyle(
                color: Colors.white24,
              ),
              decoration: kTextFieldInputDecoration,
              onChanged: (value) {
                //cityName = value;
              },
            ),
          ),
          //SizedBox(
          //height: 10,
          //),
          Column(
            children: [
              Material(
                elevation: 2.0,
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xffcc888d),
                child: MaterialButton(
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
            icon: Icon(Icons.attach_file_outlined),
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
