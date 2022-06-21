import 'package:flutter/material.dart';
import 'package:quotes2_app/class/list_class.dart';

class AllPage extends StatefulWidget {
  const AllPage({Key? key}) : super(key: key);

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("All Quotes"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListView.builder(
              padding: const EdgeInsets.all(8),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: quotesList.length,
              itemBuilder: (context, i) {
                return Card(
                  elevation: 4,
                  child: Container(
                    alignment: Alignment.center,
                    height: 90,
                    width: 50,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: image[i],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          quotesList[i],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
