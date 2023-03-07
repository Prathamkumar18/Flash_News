// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:news_app/Pages/SingleItemPage.dart';
import 'package:news_app/Theme/themes.dart';

import 'package:news_app/Widget/ListWidget.dart';

class CategoryPages extends StatelessWidget {
  final String categoryTitle;
  const CategoryPages({
    Key? key,
    required this.categoryTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: b,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: b,
        title: Text(
          "Articles",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w600,
            color: w,
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                width: 300,
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "$categoryTitle ",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: w,
                      ),
                    ),
                    Text(
                      "News :",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              height: 695,
              width: 400,
              padding: EdgeInsets.only(left: 16, top: 50),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 243, 253),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SingleItemPage()),
                        );
                      },
                      child: ListWidget(index: index));
                },
                itemCount: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
