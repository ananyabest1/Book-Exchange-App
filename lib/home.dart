import 'package:book_exchange_app/bookmodel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'search_screen.dart';
import 'wishlist_screen.dart';
import 'cart_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 480,
              child: Stack(
                children: [
                  Container(
                    height: 305,
                    decoration: BoxDecoration(
                      color: Color(0xff5ABD8C),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(300, 300),
                        bottomRight: Radius.elliptical(300, 300),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Our Top Picks',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              Icon(
                                Icons.menu,
                                size: 25,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 334,
                            viewportFraction: 0.48,
                            enlargeCenterPage: true,
                            autoPlay: true,
                          ),
                          itemCount: book.length - 5,
                          itemBuilder: (BuildContext context, int index, int realIndex) {
                            Book books = book[index];
                            return Container(
                              width: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 150,
                                    child: Image.asset(
                                      books.imageUrl,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(books.title),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(books.author)
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Bestsellers',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 210,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 15),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  Book books = book[index + 2];
                  return Container(
                    width: 150,
                    height: 210,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 130,
                          width: 100,
                          child: Image.asset(
                            books.imageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          books.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'by ${books.author}',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Genres',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 210,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff1C4A7E),
                    ),
                    width: 280,
                    child: Image.asset('assets/Group 13.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffC65135),
                    ),
                    width: 280,
                    child: Image.asset('assets/Group 13.png'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Recently Viewed',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 210,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 15),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  Book books = book[index + 5];
                  return Container(
                    width: 150,
                    height: 210,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 130,
                          width: 100,
                          child: Image.asset(
                            books.imageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          books.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'by ${books.author}',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Monthly Newsletter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xffefefef),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Receive our monthly newsletter and receive updates',
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey[350],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 5),
                            child: Text(
                              'Name',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey[350],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 5),
                            child: Text(
                              'Email',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff5ABD8C),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WishlistScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
