import 'package:book_exchange_app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final pages = 3;
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _pageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < pages; i++) {
      list.add(i == _currentPage ? _indicate(true) : _indicate(false));
    }
    return list;
  }

  Widget _indicate(bool active) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 120),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 14,
      width: 14,
      decoration: BoxDecoration(
          color: active ? Color(0xff5abd8c) : Color(0xffd0e8dc),
          borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 500,
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'Dicounted',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff5ABD8C),
                            ),
                          ),
                          Text(
                            'SecondHand Books',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff5ABD8C),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Used and near new secondhand books at great prices.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff5ABD8C),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Image(image: AssetImage('assets/onboarding0.png'))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            '20 Book Grocers',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff5ABD8C),
                            ),
                          ),
                          Text(
                            'Naionally',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff5ABD8C),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'We have successfully opened 20 stores across U.S.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff5ABD8C),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Image(image: AssetImage('assets/onboarding1.png'))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'Sell or Recycle Your Old',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff5ABD8C),
                            ),
                          ),
                          Text(
                            'Books With Us',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff5ABD8C),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'If you are looking to downsize, sell or recycle old books,',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff5ABD8C),
                            ),
                          ),
                          Text(
                            'the Book Grocer can help.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff5ABD8C),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Image(image: AssetImage('assets/onboarding2.png'))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              children: _pageIndicator(),
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xff5ABD8C),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                        'Skip It!',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
