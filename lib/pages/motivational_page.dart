import 'package:flutter/material.dart';

class Motivation extends StatefulWidget {
  const Motivation({Key? key}) : super(key: key);

  @override
  State<Motivation> createState() => _MotivationState();
}

class _MotivationState extends State<Motivation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          "Motivational Quotes",
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: albertContain(
                  title:
                      '"Do not allow people to dim your shine because they are blinded. Tell them to put some sunglasses on."'),
            ),
            Container(
              child: albertContain(
                  title:
                      '"You can be everything. You can be the infinite amount of things that people are."'),
            ),
            Container(
              child: albertContain(
                  title:
                      '"What lies behind you and what lies in front of you, pales in comparison to what lies inside of you."'),
            ),
            Container(
              child: albertContain(
                  title:
                      '"No matter what people tell you, words and ideas can change the world."'),
            ),
            Container(
              child: albertContain(title: '"Spread love everywhere you go."'),
            ),
          ],
        ),
      ),
    );
  }

  albertContain({required title}) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      height: 150,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.redAccent,
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
