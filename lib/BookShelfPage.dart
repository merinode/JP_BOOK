//구매한 책, 팔려고 등록한 책이 리스트로 보여지는 페이지
import 'package:flutter/material.dart';
import 'package:book_demo/Const.dart';
import 'MainPage.dart';
import 'package:get/get.dart';
import 'package:book_demo/MainPage.dart';
import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:book_demo/BookSearchResultPage.dart';
import 'book_model.dart';

class BookShelfPage extends StatefulWidget {
  //const ({Key? key}) : super(key: key);

  @override
  _BookShelfPageState createState() => _BookShelfPageState();
}

class _BookShelfPageState extends State<BookShelfPage> {
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
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/${books[index].imageUrl}',
                      height: 100,
                      width: 100,
                    ),
                    Column(
                      children: [
                        Text(books[index].name),
                        Text(books[index].area),
                      ],
                    ),
                    Column(
                      children: [
                        Text(books[index].price.toString()),
                        Text(books[index].category),
                      ],
                    )
                  ],
                );
              })
          : const Center(child: Text('No items')),
    );

    //  _buildList(),
    //);
  }

  void createDummyData() {
    BookModel book1 = BookModel();
    book1.name = 'aaa';
    book1.price = 200;
    book1.area = 'Tokyo';
    book1.category = 'novel';
    book1.imageUrl = 'crossing.jpg';

    BookModel book2 = BookModel();
    book2.name = 'bbb';
    book2.price = 300;
    book2.area = 'Tokyo';
    book2.category = 'novel';
    book2.imageUrl = '11111.png';

    books.add(book1);
    books.add(book2);
    books.add(book2);
    books.add(book2);
    books.add(book2);
    books.add(book2);
    books.add(book2);
    books.add(book2);
    books.add(book2);
    books.add(book2);
    books.add(book2);

    books.add(book2);
    books.add(book2);
    books.add(book2);
    books.add(book2);
    books.add(book2);
    books.add(book2);
  }
}

Widget _buildList() => ListView(
      children: [
        _tile("책이름", "자기계발", "요코하마", 500),
        _tile("책이름", "자기계발", "요코하마", 500),
        _tile("책이름", "자기계발", "요코하마", 500),
        _tile("책이름", "자기계발", "요코하마", 500),
        _tile("책이름", "자기계발", "요코하마", 500),
        _tile("책이름", "자기계발", "요코하마", 500),
        _tile("책이름", "자기계발", "요코하마", 500),
        _tile("책이름", "자기계발", "요코하마", 500),
      ],
    );

ListTile _tile(String title, String subtitle, String area, int price) =>
    ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        //area: Text(area),
        //int: Text(price),
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 260,
            maxWidth: 110,
            maxHeight: 280,
          ),
          child: Image.asset("images/crossing.jpg", fit: BoxFit.fill),
        ),
        onTap: () {
          Get.to(MainPage());
          //Navigator.push
          //  context, MaterialPageRoute(builder: (context) => MainPage()));
        });
