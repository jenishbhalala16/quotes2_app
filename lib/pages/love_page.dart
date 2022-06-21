import 'package:flutter/material.dart';

class Love_page extends StatefulWidget {
  const Love_page({Key? key}) : super(key: key);

  @override
  State<Love_page> createState() => _Love_pageState();
}

class _Love_pageState extends State<Love_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          "Love Quotes",
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: contain(
                  title:
                      '"Continue to share your heart with people even if it has been broken."'),
            ),
            Container(
              child: contain(
                  title:
                      '"There is always some madness in love. But there is also always some reason in madness."'),
            ),
            Container(
              child: contain(
                  title:
                      '"Being deeply loved by someone gives you strength, while loving someone deeply gives you courage"'),
            ),
            Container(
              child: contain(
                  title:
                      '"Have enough courage to trust love one more time and always one more time."'),
            ),
            Container(
              child: contain(
                  title:
                      '"True love comes quietly, without banners or flashing lights. If you hear bells, get your ears checked."'),
            ),
          ],
        ),
      ),
    );
  }

  contain({required title}) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      height: 150,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.pink.shade400,
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
      child: Container(
        alignment: Alignment.center,
        height: 90,
        width: 330,
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
// "There is always some madness in love. But there is also always some reason in madness.",
// "Passion makes the world go 'round. Love just makes it a safer place.",
// "In real love, you want the other person's good.In romantic love, you want the other person.",
// "Have enough courage to trust love one more time and always one more time.",
// "True love comes quietly, without banners or flashing lights. If you hear bells, get your ears checked.",
