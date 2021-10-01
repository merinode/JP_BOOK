//앱 메인 페이지
import 'package:book_demo/BottomBar/BookSearchPage.dart';
import 'package:book_demo/Drawer%20/PersonalInfoPage.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'BottomBar/Const.dart';
import 'BottomBar/BookScanPage.dart';
import 'BottomBar/NewBookList.dart';
import 'package:book_demo/BottomBar/Const.dart';
import 'BottomBar/MessageList.dart';
import 'BottomBar/LocalInfoPage.dart';
import 'Drawer /NoticeBoardPage.dart';
import 'Drawer /SettingPage.dart';
import 'Drawer /LogoutPage.dart';
import 'BottomBar/BookClipPage.dart';

class MainPage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
              ? BookScanPage()
              : _selectedIndex == 2
                  ? SwiperComponent()
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
      // floatingActionButton: Container(
      //   width: 60.0,
      //   height: 60.0,
      //   child: FloatingActionButton(
      //     backgroundColor: Color(0xff0e0a8ac),
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) {
      //             return BookScanPage();
      //           },
      //         ),
      //       );
      //     },
      //     child: Icon(
      //       Icons.add_business,
      //       size: 35.0,
      //     ),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: SizedBox(
        height: 40,
        child: ConvexAppBar(
          items: [
            TabItem(icon: Icons.auto_stories, title: '책검색'),
            TabItem(icon: Icons.search, title: '책등록'),
            TabItem(icon: Icons.attach_file_outlined, title: '책클립'),
            TabItem(icon: Icons.article, title: '메시지'),
            TabItem(icon: Icons.emoji_food_beverage_outlined, title: 'LOCAL'),
          ],
          onTap: _onItemTapped,
          activeColor: Color(0xff0e0a8ac),
          initialActiveIndex: _selectedIndex,
          style: TabStyle.flip,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
