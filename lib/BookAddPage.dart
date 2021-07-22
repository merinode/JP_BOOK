import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:book_demo/Const.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:book_demo/MainPage.dart';
import 'package:book_demo/BookSearchResultPage.dart';

class MyBookShelfPage extends StatefulWidget {
  const MyBookShelfPage({Key key}) : super(key: key);

  @override
  _MyBookShelfPageState createState() => _MyBookShelfPageState();
}

class _MyBookShelfPageState extends State<MyBookShelfPage> {
  String _scanBarcode = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
            '0xff0e0a8ac', 'Cancel', true, ScanMode.BARCODE)
        .listen((barcode) => print(barcode));
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '0xff0e0a8ac', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('책 등록',
                  style: kAppBarText, textAlign: TextAlign.center),
              backgroundColor: Color(0xffc17f84),
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
                        return BookSearchResultPage();
                      }),
                    );
                  },
                ),
              ],
            ),
            body: Builder(builder: (BuildContext context) {
              return Container(
                  alignment: Alignment.center,
                  child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20.0),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.white24,
                            ),
                            decoration: kIsbnSearchInputDecoration,
                            onChanged: (value) {
                              //cityName = value;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffc17f84), // background
                              onPrimary: Colors.white, // foreground
                            ),
                            onPressed: () => scanBarcodeNormal(),
                            child: Text(
                              'ISBN 바코드 스캔',
                              style: kDrawerMainText,
                            ),
                          ),
                        ),
                        //ElevatedButton(
                        //style: ElevatedButton.styleFrom(
                        //primary: Color(0xffc17f84), // background
                        //onPrimary: Colors.white, // foreground
                        //),
                        //onPressed: () => startBarcodeScanStream(),
                        //child: Text(
                        //'Start barcode scan stream',
                        //style: kDrawerMainText,
                        //),
                        //),
                        SizedBox(
                          height: 50.0,
                        ),
                        Text(
                          'Scan result : $_scanBarcode\n',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffc17f84),
                            fontFamily: 'DoHyeon',
                          ),
                        ),
                      ]));
            })));
  }
}
