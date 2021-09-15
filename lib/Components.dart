import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class SwiperComponent extends StatelessWidget {
  //const SwiperComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Swiper(
        itemCount: 10,
        itemHeight: _size.height / 1.2,
        itemWidth: _size.width / 1.2,
        containerWidth: double.infinity,
        layout: SwiperLayout.CUSTOM,
        controller: new SwiperController(),
        customLayoutOption: CustomLayoutOption(
          startIndex: 0,
          stateCount: 3,
        ).addOpacity([0.25, 0.5, 1.0, 0.1]).addTranslate([
          new Offset(0.0, 20.0),
          new Offset(0.0, -13.0),
          new Offset(0.0, -65.0),
          new Offset(0.0, -100.0),
        ]).addScale([0.75, 0.85, 1.0], Alignment.bottomCenter),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            child: Stack(children: [
              Image.asset("images/crossing.jpg",
                  height: _size.height / 1.2,
                  width: _size.width / 1.2,
                  fit: BoxFit.cover),
              Container(
                height: _size.height / 1.2,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0x00000000),
                        Color(0x00000000),
                        Color(0xcc000000),
                        Color(0xcc000000),
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30, left: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Shinjuku crossing",
                        style: TextStyle(
                          fontFamily: 'NanumMyeongjo',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Tokyo, Japan",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ]),
              ),
            ]),
          );
        });
  }
}
