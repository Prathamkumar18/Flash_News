// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_app/Theme/themes.dart';

class SingleItemPage extends StatelessWidget {
  String category;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  SingleItemPage({
    Key? key,
    required this.category,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: 400,
          height: 375,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("$urlToImage"), fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 340),
          width: 400,
          height: 530,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              color: Color.fromARGB(255, 248, 239, 255),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "$title",
              style: TextStyle(
                  fontSize: 22, color: b, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40,
                  width: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: b,
                  ),
                  child: Center(
                    child: Text(
                      "$category",
                      style: TextStyle(
                          color: w, fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: b,
                  ),
                  child: Center(
                    child: Text(
                      "Date: ${publishedAt}",
                      style: TextStyle(
                          color: w, fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: b,
                  ),
                  child: Center(
                    child: Text(
                      "Author:$author",
                      style: TextStyle(
                          color: w, fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 290,
              width: 380,
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Container(
                  child: Text(
                    "$content",
                    style: TextStyle(
                        fontSize: 20, color: b, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ]),
        ),
        Container(
          height: 65,
          width: 65,
          margin: EdgeInsets.only(top: 310, left: 280),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(40)),
          child: Icon(
            Icons.share,
            size: 30,
            color: Colors.white,
          ),
        )
      ]),
    );
  }
}
