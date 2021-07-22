import 'package:flutter/material.dart';
import 'package:book_demo/Const.dart';
import 'MainPage.dart';
import 'package:book_demo/MainPage.dart';
import 'package:flashy_tab_bar/flashy_tab_bar.dart';

class MyBookShelfPage extends StatefulWidget {
  //const ({Key? key}) : super(key: key);

  @override
  _MyBookShelfPageState createState() => _MyBookShelfPageState();
}

class _MyBookShelfPageState extends State<MyBookShelfPage> {
  int _selectedIndex = 0;

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
      body: Center(
        //child: _buildList(),

        child: Container(
          alignment: Alignment.center,
          child: Image.asset(
            'images/simplejpmap.png',
            width: 250.0,
          ),
        ),
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
                  return MyBookShelfPage();
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
