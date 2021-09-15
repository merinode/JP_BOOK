//앱 메인 페이지
import 'package:book_demo/BookSearchPage.dart';
import 'package:book_demo/PersonalInfoPage.dart';
import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Const.dart';
import 'BookScanPage.dart';
import 'NewBookList.dart';
import 'package:book_demo/BookClipPage.dart';
import 'MessageList.dart';
import 'RandomTalkPage.dart';
import 'package:book_demo/LoginPage.dart';
import 'NoticeBoardPage.dart';
import 'SettingPage.dart';
import 'LogoutPage.dart';

class MainPage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaebed),
      appBar: AppBar(
          backgroundColor: Color(0xff0e0a8ac),
          title: Center(
              child: Text('TEWAK',
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
      body: _selectedIndex == 0
          ? NewBookListPage()
          : _selectedIndex == 1
              ? BookSearchPage()
              : _selectedIndex == 2
                  ? BookClipPage()
                  : _selectedIndex == 3
                      ? MessageListPage()
                      : RandomTalkPage(),
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
              currentAccountPicture: CircleAvatar(
                backgroundImage: ExactAssetImage('images/kaonashi.jpeg'),
              ),
            ),
            ListTile(
                leading: Icon(Icons.account_box_rounded),
                title: Text("개인 정보 관리", style: kDrawerText),
                onTap: () {
                  Get.to(PersonalInfoPage());
                }),
            ListTile(
                leading: Icon(Icons.archive),
                title: Text("공지사항", style: kDrawerText),
                onTap: () {
                  Get.to(NoticeBoardPage());
                }),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("설정", style: kDrawerText),
                onTap: () {
                  Get.to(SettingPage());
                }),
            Divider(),
            ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text("로그아웃", style: kDrawerText),
                onTap: () {
                  Get.to(LogoutPage());
                }),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 60.0,
        height: 60.0,
        child: FloatingActionButton(
          backgroundColor: Color(0xff0e0a8ac),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return BookScanPage();
                },
              ),
            );
          },
          child: Icon(
            Icons.add_business,
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
          print('index : $index');
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.auto_stories),
            title: Text(
              '전지역',
              style: kBottomBarText,
            ),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text(
              '책검색',
              style: kBottomBarText,
            ),
            //onPressed: () {
            //Navigator.push(
            //context,
            // MaterialPageRoute(builder: (context) {
            // return MainPage();
            // }),
            //),
            //},
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
              '메시지',
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
