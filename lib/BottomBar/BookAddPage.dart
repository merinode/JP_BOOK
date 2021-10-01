import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:book_demo/MainPage.dart';
import 'package:flutter/services.dart';
import 'package:book_demo/BottomBar/BoodAddConfirmPage.dart';
import 'package:image_picker/image_picker.dart';
import 'Book_model.dart';
import 'Const.dart';

class BookAddPage extends StatefulWidget {
  //const BookAddPage({Key? key}) : super(key: key);

  @override
  _BookAddPageState createState() => _BookAddPageState();
}

class _BookAddPageState extends State<BookAddPage> {
  String dropdownvalue = 'Tokyo';
  var items = [
    'Tokyo',
    'Osaka',
    'Hokkaido',
    'Kyoto',
    'Fukuoka',
    'Sendai',
    'Nagoya',
    'Yokohama',
    'Kochi',
    'Nara',
    'Ehime',
    'Saitama',
    'Okinawa',
    'Kumamoto',
    'Fukushima',
    'Toyama',
    'Shizuoka',
  ];

  File pickedImageFile;
  _getFromGallery() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      //File imageFile = File(pickedFile.path);
      pickedImageFile = File(pickedFile.path);
      print(pickedFile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                '책 등록',
                style: TextStyle(
                  color: Color(0xff0e0a8ac),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 30),
            //Expanded(child: Divider()),
            GestureDetector(
              onTap: () async {
                setState(() async {
                  await _getFromGallery();
                });

                // _getFromGallery() async {
                //   PickedFile pickedFile = await ImagePicker().getImage(
                //     source: ImageSource.gallery,
                //     maxWidth: 1800,
                //     maxHeight: 1800,
                //   );
                //   if (pickedFile != null) {
                //     File imageFile = File(pickedFile.path);
                //   }
                // };
              },
              child: Container(
                color: Colors.amber,
                width: 200,
                height: 200,
              ),
            ),
            //SizedBox(height: 10),
            pickedImageFile != null
                ? Image.file(
                    pickedImageFile,
                    width: 200,
                    height: 200,
                  )
                : Container(),
            Container(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: "책 이름"),
                    keyboardType: TextInputType.text,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "저자"),
                    keyboardType: TextInputType.text,
                  ),
                  Row(children: [
                    Container(
                      width: 250,
                      child: TextField(
                          decoration: InputDecoration(labelText: "가격"),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ]),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('JPY'),
                  ]),
                  TextField(
                    decoration: InputDecoration(labelText: '이 책은요,'),
                    keyboardType: TextInputType.text,
                  ),
                  Row(children: [
                    Text('지역:'),
                    SizedBox(
                      width: 30,
                    ),
                    Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropdownButton(
                              value: dropdownvalue,
                              icon: Icon(Icons.keyboard_arrow_down),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                    value: items, child: Text(items));
                              }).toList(),
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownvalue = newValue;
                                });
                              },
                            ),
                          ]),
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xffcc888d),
                        child: MaterialButton(
                          minWidth: 100,
                          //minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          onPressed: () {
                            BookModel book = BookModel();
                            //book.name
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return BookAddConfirmPage();
                              }),
                            );
                          },
                          child: Text(
                            "내용 확인",
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
            ),
          ],
        ),
      ),
    );
  }
}
