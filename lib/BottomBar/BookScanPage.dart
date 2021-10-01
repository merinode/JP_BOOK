import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:book_demo/BottomBar/Const.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:book_demo/BottomBar/BookAddPage.dart';
import 'package:book_demo/MainPage.dart';

class BookScanPage extends StatefulWidget {
  const BookScanPage({Key key}) : super(key: key);

  @override
  _BookScanPageState createState() => _BookScanPageState();
}

class _BookScanPageState extends State<BookScanPage> {
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
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Color(0xffc17f84),
      //     title: Center(
      //         child: Text('그라카이브',
      //             style: kAppBarText, textAlign: TextAlign.center)),
      //     actions: <Widget>[
      //       IconButton(
      //           icon: Icon(
      //             Icons.sensor_door,
      //             color: Colors.white,
      //           ),
      //           onPressed: () {
      //             Get.to(MainPage());
      //           })
      //     ]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 70,
            ),
            Center(
              child: Text(
                '책 등록',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Dohyeon',
                  color: Color(0xffc17f84),
                ),
              ),
            ),
            SizedBox(
              width: 200,
            ),
            Center(
              child: Container(
                width: 350,
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white24,
                  ),
                  decoration: kIsbnSearchInputDecoration,
                  onChanged: (value) {
                    print(value);
                    print(value.length);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                '혹은',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Dohyeon',
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
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
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                '혹은',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Dohyeon',
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffF5CEC7), // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      Get.to(() => BookAddPage());
                    },
                    child: Text(
                      '직접 등록',
                      style: kDrawerMainText,
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(
            // height: 50.0,
            //),
          ],
        ),
      ),
    );
  }
}
