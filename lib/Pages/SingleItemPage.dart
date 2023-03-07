import 'package:flutter/material.dart';
import 'package:news_app/Theme/themes.dart';

class SingleItemPage extends StatelessWidget {
  const SingleItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: 400,
          height: 375,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/Technology.jpeg"), fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 340),
          width: 400,
          height: 530,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 221, 241, 244),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Irfan Pathan posts video with Sania Mirza from her farewell bash; netizen writes, 'Shoaib Malik wants to know your location",
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
                      "Entertainment",
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
                      "Time: 12:04 pm.",
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
                      "Author:Pratham.",
                      style: TextStyle(
                          color: w, fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 310,
              width: 380,
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Container(
                  child: Text(
                    "Harvey He wasnt among the quartet of attackers who scored, but the presence of Harvey Elliott in Liverpools starting XI proved crucial in their historic 7-0 thrashing of Manchester United yesterdaHe wasnt among the quartet of attackers who scored, but the presence of Harvey Elliott in Liverpools starting XI proved crucial in their historic 7-0 thrashing of Manchester United yesterda Elliott was a surprise name in the Liverpool XI against Man United, but he played a crucial part in Cody Gakpo's fine displayHarvey He wasnt among the quartet of attackers who scored, but the presence of Harvey Elliott in Liverpools starting XI proved crucial in their historic 7-0 thrashing of Manchester United yesterdaHe wasnt among the quartet of attackers who scored, but the presence of Harvey Elliott in Liverpools starting XI proved crucial in their historic 7-0 thrashing of Manchester United yesterda Elliott was a surprise name in the Liverpool XI against Man United, but he played a crucial part in Cody Gakpo's fine display",
                    style: TextStyle(
                        fontSize: 16, color: b, fontWeight: FontWeight.w400),
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
