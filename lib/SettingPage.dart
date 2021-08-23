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

  @override
  void initState() {
    super.initState();

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
        /*body: itemCount > 0
            ? ListView.builder(
                itemCount: setting.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item ${index + 1}'),
                  );
                },
              )
            : const Center(child: Text('No items')),*/
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

//Widget _buildList() => ListView(
  //children: [
  //_tile("내서재 설정"),
  //_tile("메세지 설정"),
  //_tile("책판매 설정"),
  //],);

}
