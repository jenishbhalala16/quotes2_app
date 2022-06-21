import 'package:flutter/material.dart';

class Albert extends StatefulWidget {
  const Albert({Key? key}) : super(key: key);

  @override
  State<Albert> createState() => _AlbertState();
}

class _AlbertState extends State<Albert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          "Albert Einstein Quotes",
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
                      '"There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle."'),
            ),
            Container(
              child: albertContain(
                  title:
                      '"Logic will get you from A to Z; imagination will get you everywhere."'),
            ),
            Container(
              child: albertContain(
                  title:
                      '"Life is like riding a bicycle. To keep your balance, you must keep moving."'),
            ),
            Container(
              child: albertContain(
                  title:
                      '"I speak to everyone in the same way, whether he is the garbage man or the president of the university."'),
            ),
            Container(
              child: albertContain(
                  title:
                      '"The world as we have created it is a process of our thinking. It cannot be changed without changing our thinking."'),
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
        color: Colors.cyan,
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
