//구매한 책, 팔려고 등록한 책이 리스트로 보여지는 페이지
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Book_model.dart';
import 'package:book_demo/BookDetail.dart';

class NewBookListPage extends StatefulWidget {
  //const ({Key? key}) : super(key: key);

  @override
  _NewBookListPageState createState() => _NewBookListPageState();
}

class _NewBookListPageState extends State<NewBookListPage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  List<BookModel> books = [];

  @override
  void initState() {
    createDummyData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: books.isNotEmpty // books.isEmpty == false, books.length < 0
          ? ListView.builder(
              itemCount: books.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    /*
                    Get.to(() => BookDetailPage(
                          books: books,
                          index: index,
                        ));
                        */
                    Get.to(() => BookDetailPage(book: books[index]));
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //SizedBox(
                          //width: 10,
                          //),
                          Image.asset(
                            'images/${books[index].imageUrl}',
                            fit: BoxFit.cover,
                            height: 80,
                            width: 80,
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  books[index].name,
                                  style: TextStyle(
                                    fontFamily: 'Dohyeon',
                                    fontWeight: FontWeight.w100,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 10),
                            child: Column(
                              children: [
                                Text(books[index].area,
                                    style: TextStyle(
                                      fontFamily: 'NanumMyeongjo',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Color(0xffc17f84),
                                    )),
                                SizedBox(height: 10),
                                /*Text(books[index].subarea,
                                    style: TextStyle(
                                      fontFamily: 'Dohyeon',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: Color(0xffc17f84),
                                    )),*/
                                Text(books[index].price),
                                //Text(books[index].category),
                              ],
                            ),
                          ),
                          //SizedBox(
                          //width: 10,
                          //),
                        ],
                      )
                    ],
                  ),
                );
              })
          : const Center(child: Text('No items')),
    );
  }

  void createDummyData() {
    BookModel book1 = BookModel();
    book1.name = '문명의 충돌';
    book1.price = '200Yen';
    book1.area = 'Tokyo';
    book1.subarea = 'Minami';
    book1.category = '사회/문화';
    book1.imageUrl = 'book1.jpeg';

    BookModel book2 = BookModel();
    book2.name = '1Q84';
    book2.price = '500Yen';
    book2.area = 'Tokyo';
    book2.subarea = 'Higashi';
    book2.category = '小説';
    book2.imageUrl = 'book2.jpeg';

    BookModel book3 = BookModel();
    book3.name = '언어의 온도';
    book3.price = '500Yen';
    book3.area = 'Fukuoka';
    book3.subarea = 'Nishi';
    book3.category = '에세이';
    book3.imageUrl = 'book3.jpeg';

    BookModel book4 = BookModel();
    book4.name = 'The Simpsons';
    book4.price = '200Yen';
    book4.area = 'Sapporo';
    book4.subarea = '메구로';
    book4.category = '만화';
    book4.imageUrl = 'book4.jpeg';

    BookModel book5 = BookModel();
    book5.name = '프랑스 영화처럼';
    book5.price = '600Yen';
    book5.area = 'Sendai';
    book5.subarea = 'Nishi';
    book5.category = '비평';
    book5.imageUrl = 'book5.jpeg';

    BookModel book6 = BookModel();
    book6.name = '초등학교 한문공부';
    book6.price = '300Yen';
    book6.area = 'Osaka';
    book6.subarea = 'Nishi';
    book6.category = '교과서';
    book6.imageUrl = 'book6.jpeg';

    BookModel book7 = BookModel();
    book7.name = 'ジブリ漫画の世界';
    book7.price = '1000Yen';
    book7.area = 'Kyoto';
    book7.subarea = 'Kita';
    book7.category = '만화';
    book7.imageUrl = 'book7.jpeg';

    BookModel book8 = BookModel();
    book8.name = '재일한국인의 역사';
    book8.price = '400Yen';
    book8.area = 'Yamaguchi';
    book8.subarea = 'Minami';
    book8.category = '학술지';
    book8.imageUrl = 'book8.jpeg';

    BookModel book9 = BookModel();
    book9.name = '日帰り北海道';
    book9.price = '100Yen';
    book9.area = 'Sapporo';
    book9.subarea = 'Nishi';
    book9.category = '여행';
    book9.imageUrl = 'book9.jpeg';

    BookModel book10 = BookModel();
    book10.name = 'AnAn 2020년 10월호';
    book10.price = '400Yen';
    book10.area = 'Yokohama';
    book10.subarea = 'Nishi';
    book10.category = '잡지/매거';
    book10.imageUrl = 'book10.jpeg';

    BookModel book11 = BookModel();
    book11.name = 'オキナワの歴史';
    book11.price = '1500Yen';
    book11.area = 'Okinawa';
    book11.subarea = 'Naha';
    book11.category = '역사서';
    book11.imageUrl = 'book11.jpeg';

    BookModel book12 = BookModel();
    book12.name = '우리아기 육아백서';
    book12.price = '300Yen';
    book12.area = 'Saitama';
    book12.subarea = 'Chuo';
    book12.category = '육아';
    book12.imageUrl = 'book12.jpeg';

    BookModel book13 = BookModel();
    book13.name = '주식투자기초';
    book13.price = '500Yen';
    book13.area = 'Shizuoka';
    book13.subarea = 'Minami';
    book13.category = '금융/경제';
    book13.imageUrl = 'book13.jpeg';

    BookModel book14 = BookModel();
    book14.name = '차이나트렌드';
    book14.price = '300Yen';
    book14.area = 'Yokohama';
    book14.subarea = 'Minami';
    book14.category = '사회/문화';
    book14.imageUrl = 'book14.jpeg';

    BookModel book15 = BookModel();
    book15.name = '최신항암치료';
    book15.price = '300Yen';
    book15.area = 'Nara';
    book15.subarea = 'Higashi';
    book15.category = '의학/의료';
    book15.imageUrl = 'book15.jpeg';

    BookModel book16 = BookModel();
    book16.name = 'Cambrige IELTS';
    book16.price = '700Yen';
    book16.area = 'Osaka';
    book16.subarea = 'Chuo';
    book16.category = '교과서, 외국어';
    book16.imageUrl = 'book16.jpeg';

    BookModel book17 = BookModel();
    book17.name = 'Göttingen';
    book17.price = '500Yen';
    book17.area = 'Shimane';
    book17.subarea = 'Kita';
    book17.category = '여행, 외국어';
    book17.imageUrl = 'book17.jpeg';

    books.add(book1);
    books.add(book2);
    books.add(book3);
    books.add(book4);
    books.add(book5);
    books.add(book6);
    books.add(book7);
    books.add(book8);
    books.add(book9);
    books.add(book10);
    books.add(book11);
    books.add(book12);
    books.add(book13);
    books.add(book14);
    books.add(book15);
    books.add(book16);
    books.add(book17);
  }
}
