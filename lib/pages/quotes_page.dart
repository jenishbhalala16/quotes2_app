import 'package:flutter/material.dart';

class QPage extends StatefulWidget {
  const QPage({Key? key}) : super(key: key);

  @override
  State<QPage> createState() => _QPageState();
}

class _QPageState extends State<QPage> {
  bool bookmark1 = true;
  bool bookmark2 = true;
  bool bookmark3 = true;
  bool bookmark4 = true;
  bool star1 = true;
  bool star2 = true;
  bool star3 = true;
  bool star4 = true;
  bool copy1 = true;
  bool copy2 = true;
  bool copy3 = true;
  bool copy4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text("Swami Vivekananda Quotes"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('first_page');
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      //BoxShadow
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(20),
                        height: 90,
                        width: 400,
                        child: Text(
                          'If i love myself despite my infinite faults, how can i hate anyone at the glimpse of a few faults',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                bookmark1 = !bookmark1;
                                if (bookmark1 == false) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('bookmarked...'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                } else if (bookmark1 == true) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('bookmark removed'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                }
                              });
                            },
                            child: Icon(
                              Icons.bookmark,
                              color:
                                  bookmark1 ? Colors.black38 : Colors.redAccent,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                star1 = !star1;
                                if (star1 == false) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("stared..."),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                } else if (star1 == true) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('removed from stared'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                }
                              });
                            },
                            child: Icon(
                              Icons.star,
                              color: star1 ? Colors.black38 : Colors.yellow,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                copy1 = !copy1;
                                if (copy1 == false) {
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
                              color: copy1 ? Colors.black38 : Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //2
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('second_page');
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      //BoxShadow
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(20),
                        height: 90,
                        width: 400,
                        child: Text(
                          'Talk to yourself once in a day.. otherwise you may miss meeting an excellent person in this world.',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                bookmark2 = !bookmark2;
                                if (bookmark2 == false) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('bookmarked...'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                } else if (bookmark2 == true) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('bookmark removed'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                }
                                ;
                              });
                            },
                            child: Icon(
                              Icons.bookmark,
                              color:
                                  bookmark2 ? Colors.black38 : Colors.redAccent,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                star2 = !star2;
                                if (star2 == false) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("stared..."),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                } else if (star2 == true) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('removed from stared'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                }
                                ;
                              });
                            },
                            child: Icon(
                              Icons.star,
                              color: star2 ? Colors.black38 : Colors.yellow,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                copy2 = !copy2;
                                if (copy2 == false) {
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
                              color: copy2 ? Colors.black38 : Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //3
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('third_page');
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      //BoxShadow
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(20),
                        height: 90,
                        width: 400,
                        child: Text(
                          'When you are doing any work.. do it as worship, as he highest worship, and devote your whole life to it for the time being.',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                bookmark3 = !bookmark3;
                                if (bookmark3 == false) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('bookmarked...'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                } else if (bookmark3 == true) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('bookmark removed'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                }
                              });
                            },
                            child: Icon(
                              Icons.bookmark,
                              color:
                                  bookmark3 ? Colors.black38 : Colors.redAccent,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                star3 = !star3;
                                if (star3 == false) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("stared..."),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                } else if (star3 == true) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('removed from stared'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                }
                              });
                            },
                            child: Icon(
                              Icons.star,
                              color: star3 ? Colors.black38 : Colors.yellow,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                copy3 = !copy3;
                                if (copy3 == false) {
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
                              color: copy3 ? Colors.black38 : Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //4
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('fourth_page');
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      //BoxShadow
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(20),
                        height: 90,
                        width: 400,
                        child: Text(
                          'Dare to be free dare to go as far as you’re thought leads, and dare to carry that out in your life.',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                bookmark4 = !bookmark4;
                                if (bookmark4 == false) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('bookmarked...'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                } else if (bookmark4 == true) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('bookmark removed'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                }
                              });
                            },
                            child: Icon(
                              Icons.bookmark,
                              color:
                                  bookmark4 ? Colors.black38 : Colors.redAccent,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                star4 = !star4;
                                if (star4 == false) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("stared..."),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                } else if (star4 == true) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('removed from stared'),
                                      backgroundColor: Colors.grey,
                                    ),
                                  );
                                }
                              });
                            },
                            child: Icon(
                              Icons.star,
                              color: star4 ? Colors.black38 : Colors.yellow,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                copy4 = !copy4;
                                if (copy4 == false) {
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
                              color: copy4 ? Colors.black38 : Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // svQuotes({
  //   required String title,
  //   String? pageName,
  // }) {
  //   return Column(
  //     children: [
  //       InkWell(
  //         onTap: () {
  //           Navigator.of(context).pushNamed(pageName!);
  //         },
  //         child: Padding(
  //           padding: const EdgeInsets.all(10),
  //           child: Container(
  //             alignment: Alignment.center,
  //             height: 200,
  //             width: 400,
  //             decoration: BoxDecoration(
  //               color: Colors.white,
  //               borderRadius: BorderRadius.circular(15),
  //               boxShadow: [
  //                 BoxShadow(
  //                   color: Colors.grey,
  //                   offset: const Offset(
  //                     5.0,
  //                     5.0,
  //                   ),
  //                   blurRadius: 10.0,
  //                   spreadRadius: 2.0,
  //                 ), //BoxShadow
  //                 //BoxShadow
  //               ],
  //             ),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               crossAxisAlignment: CrossAxisAlignment.end,
  //               children: [
  //                 Container(
  //                   alignment: Alignment.center,
  //                   margin: EdgeInsets.all(20),
  //                   height: 90,
  //                   width: 400,
  //                   child: Text(
  //                     title,
  //                     style: const TextStyle(
  //                         fontSize: 20, fontWeight: FontWeight.bold),
  //                   ),
  //                 ),
  //                 // SizedBox(
  //                 //   height: 20,
  //                 // ),
  //                 // Row(
  //                 //   mainAxisAlignment: MainAxisAlignment.center,
  //                 //   children: [
  //                 //     InkWell(
  //                 //       onTap: () {
  //                 //         setState(() {
  //                 //           bookmark = !bookmark;
  //                 //         });
  //                 //       },
  //                 //       child: Icon(
  //                 //         Icons.bookmark,
  //                 //         color: bookmark ? Colors.black38 : Colors.redAccent,
  //                 //       ),
  //                 //     ),
  //                 //     SizedBox(
  //                 //       width: 10,
  //                 //     ),
  //                 //     InkWell(
  //                 //       onTap: () {},
  //                 //       child: Icon(
  //                 //         Icons.star,
  //                 //         color: Colors.black38,
  //                 //       ),
  //                 //     ),
  //                 //     SizedBox(
  //                 //       width: 10,
  //                 //     ),
  //                 //     InkWell(
  //                 //       onTap: () {},
  //                 //       child: Icon(
  //                 //         Icons.copy,
  //                 //         color: Colors.black38,
  //                 //       ),
  //                 //     )
  //                 //   ],
  //                 // )
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
