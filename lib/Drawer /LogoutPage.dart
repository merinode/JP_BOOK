import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoutPage extends StatelessWidget {
  //const LogoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "로그아웃 할까요?",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Dohyeon',
                  color: Color(
                    (0xffc17f84),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(80, 50)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffffffff),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: BorderSide(
                                          color: Color(0xffc17f84),
                                          width: 4.0)))),
                          child: Text(
                            '네',
                            style:
                                TextStyle(fontFamily: 'DoHyeon', fontSize: 20),
                          ),
                          onPressed: () {
                            Get.back();
                          }),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(80, 50)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffECEEEF),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: BorderSide(
                                          color: Color(0xffc17f84),
                                          width: 4.0)))),
                          child: Text(
                            '아니요',
                            style:
                                TextStyle(fontFamily: 'DoHyeon', fontSize: 20),
                          ),
                          onPressed: () {
                            Get.back();
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
