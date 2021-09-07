//키워드를 넣어 책을 검색하면 검색 결과가 나타나는 페이지
//리스트
import 'package:flutter/material.dart';
import 'Const.dart';
import 'BookSearchPage.dart';
import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:book_demo/MainPage.dart';
import 'package:get/get.dart';
import 'package:book_demo/PersonalInfoPage.dart';
import 'package:book_demo/NoticeBoardPage.dart';
import 'package:book_demo/SettingPage.dart';
import 'package:book_demo/BookScanPage.dart';
import 'package:book_demo/LogoutPage.dart';

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
    return Scaffold(
      backgroundColor: Color(0xffeaebed),
      appBar: AppBar(
        backgroundColor: Color(0xffc17f84),
        title: Center(
            child:
                Text('그라카이브', style: kAppBarText, textAlign: TextAlign.center)),
      ),
      body: Column(
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
            child: Row(),
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
              currentAccountPicture: CircleAvatar(
                backgroundImage: ExactAssetImage('images/kaonashi.jpeg'),
              ),
            ),
            ListTile(
                leading: Icon(Icons.account_box_rounded),
                title: Text("개인 정보 관리", style: kDrawerText),
                onTap: () {
                  Get.to(() => PersonalInfoPage());
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
