import 'package:flutter/material.dart';
import 'BottomBar/Book_model.dart';
import 'BottomBar/NewBookList.dart';

class BookDetailPage extends StatefulWidget {
  //const BookDetail({Key? key}) : super(key: key);
  /*
  final List<BookModel> books;
  final int index;
  BookDetailPage({this.books, this.index});
  */
  final BookModel book;

  BookDetailPage({this.book});

  @override
  _BookDetailPageState createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  List<BookModel> books = [];

  @override
  void initState() {
    super.initState();

    print(widget.book.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                '책 상세 정보',
                style: TextStyle(
                  fontFamily: 'Dohyeon',
                  fontWeight: FontWeight.normal,
                  color: Color(0xffcc888d),
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                width: 300,
                child: Card(
                  margin: EdgeInsets.all(10),
                  elevation: 1.5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/${widget.book.imageUrl}',
                      width: 300.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 300,
                child: Card(
                  margin: EdgeInsets.all(10),
                  elevation: 1.5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        widget.book.quote,
                        style: TextStyle(
                          fontFamily: 'NanumMyeongjo-Regular',
                          //fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xffcc888d).withOpacity(0.6),
                  border: Border.all(color: Color(0xffcc888d)),
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                alignment: Alignment.center,
                child: Text(
                  '같은 책이 다른 지역에도 있어요. ',
                  style: TextStyle(
                    fontFamily: 'Dohyeon',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
