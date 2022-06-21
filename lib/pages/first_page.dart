import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool copy = false;
  bool star = true;

  final List myImage = [
    'https://images.unsplash.com/photo-1618886487325-f665032b6352?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJlJTIwaW1hZ2VzfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://images.unsplash.com/photo-1551740994-7af69385a217?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2lsZGVybmVzc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://images.unsplash.com/photo-1549492423-400259a2e574?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=321&q=80',
    'https://images.unsplash.com/photo-1539679121360-846d7d42d802?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=408&q=80'
  ];

  final List fontList = [
    GoogleFonts.aBeeZee(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    GoogleFonts.concertOne(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    GoogleFonts.fahkwang(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    GoogleFonts.gabriela(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)
  ];

  int i = 0;
  int f = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 820,
              width: 420,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(myImage[i]),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 60),
                  height: 600,
                  width: 300,
                  color: Colors.transparent,
                  child: Text(
                      'If i love myself despite my infinite faults, how can i hate anyone at the glimpse of a few faults\n- Swami vivekananda',
                      style: fontList[f]),
                ),
              ],
            ),
            Container(
              height: 100,
              width: 300,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (i == 3) {
                          i = 0;
                        } else {
                          i++;
                        }
                      });
                    },
                    child: Icon(
                      Icons.image,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (f == 3) {
                              f = 0;
                            } else {
                              f++;
                            }
                          });
                        },
                        child: Icon(
                          Icons.font_download,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                copy = !copy;
                                if (copy == false) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Text copied...'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                }
                              });
                            },
                            child: Icon(
                              Icons.copy,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await Share.share(
                                      "If i love myself despite my infinite faults, how can i hate anyone at the glimpse of a few faults");
                                },
                                child: Icon(
                                  Icons.share,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        star = !star;
                                        if (star == false) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text("stared..."),
                                              backgroundColor: Colors.grey,
                                            ),
                                          );
                                        } else if (star == true) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content:
                                                  Text('removed from stared'),
                                              backgroundColor: Colors.grey,
                                            ),
                                          );
                                        }
                                      });
                                    },
                                    child: Icon(
                                      Icons.star,
                                      size: 30,
                                      color:
                                          star ? Colors.white : Colors.yellow,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
