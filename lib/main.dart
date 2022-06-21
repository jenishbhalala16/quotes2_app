import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quotes2_app/pages/albert_page.dart';
import 'package:quotes2_app/pages/first_page.dart';
import 'package:quotes2_app/pages/fourth_page.dart';
import 'package:quotes2_app/pages/love_page.dart';
import 'package:quotes2_app/pages/motivational_page.dart';
import 'package:quotes2_app/pages/quotes_page.dart';
import 'package:quotes2_app/pages/second_page.dart';
import 'package:quotes2_app/pages/show_all.dart';
import 'package:quotes2_app/pages/third_page.dart';

import 'class/list_class.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => MyApp(),
        "show_all": (context) => AllPage(),
        "quotes_page": (context) => QPage(),
        "first_page": (context) => FirstPage(),
        "second_page": (context) => Second_page(),
        "third_page": (context) => Third_page(),
        "fourth_page": (context) => Fourth_page(),
        "love_page": (context) => Love_page(),
        "albert_page": (context) => Albert(),
        "motivational_page": (context) => Motivation(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  TextStyle MyStyle = TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text('Amazing Quotes'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
                items: imagesList
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          margin: EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                          ),
                          elevation: 6.0,
                          shadowColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            child: Stack(
                              children: [
                                Image.network(
                                  item,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imagesList.map((urlOfItem) {
                  int index = imagesList.indexOf(urlOfItem);
                  return Container(
                    width: 10,
                    height: 10,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? Color.fromRGBO(0, 0, 0, 0.8)
                          : Color.fromRGBO(0, 0, 0, 0.3),
                    ),
                  );
                }).toList(),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Most Popular",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('love_page');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Love Quotes",
                            style: MyStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('quotes_page');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Swami\nVivekanands\nQuotes",
                            style: MyStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('albert_page');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Albert Einstein\nQuotes",
                            style: MyStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('motivational_page');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Motivational\nQuotes",
                            style: MyStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Quotes by Category",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("show_all");
                        },
                        child: Text(
                          "Show All",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Albert Einstein\nQuotes",
                            style: MyStyle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Sad Quotes",
                            style: MyStyle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Life Quotes",
                            style: MyStyle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Success Quotes",
                            style: MyStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Featured",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 130,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Success Quotes",
                          style: MyStyle,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 130,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Life Quotes",
                          style: MyStyle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 130,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Sad Quotes",
                          style: MyStyle,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 130,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "DR. Seuss\nQuotes",
                          style: MyStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
