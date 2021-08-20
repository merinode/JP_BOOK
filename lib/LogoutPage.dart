import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoutPage extends StatelessWidget {
  //const LogoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: GestureDetector(
              child: Text("로그아웃 할까요?"),
              onTap: () {
                Get.back();
              }),
        ),
      ),
    );
  }
}
