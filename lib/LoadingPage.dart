//앱을 처음 기동할 때 보여지는 로딩페이지
import 'package:flutter/material.dart';
import 'BookSearchPage.dart';
import 'MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: 'NanumMyeongjo',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.normal),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.normal),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'NanumMyeongjo'),
        ),
      ),
      home: LoadingPage(),
    );
  }
}

class LoadingPage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  String image1 = 'images/background.jpg';
  String image2 = 'images/crossing.jpg';
  String image3 = 'images/subway.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeaebed),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('$image3'),
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 60.0,
        height: 60.0,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return MainPage();
              }),
            );
          },
          child: Icon(
            Icons.menu_book_sharp,
            size: 35.0,
          ),
        ),
      ),
    );
  }
}
