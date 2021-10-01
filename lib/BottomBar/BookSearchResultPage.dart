//키워드를 넣어 책을 검색하면 검색 결과가 나타나는 페이지
//리스트
import 'package:flutter/material.dart';
import 'Const.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:book_demo/Drawer%20/PersonalInfoPage.dart';
import 'package:book_demo/Drawer%20/NoticeBoardPage.dart';
import 'package:book_demo/Drawer%20/SettingPage.dart';
import 'package:book_demo/BottomBar/BookScanPage.dart';
import 'package:book_demo/Drawer%20/LogoutPage.dart';

class BookSearchResultPage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  _BookSearchResultPageState createState() => _BookSearchResultPageState();
}

class _BookSearchResultPageState extends State<BookSearchResultPage> {
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
        backgroundColor: Color(0xffe5e5e5),
      ),
    );
  }
}
