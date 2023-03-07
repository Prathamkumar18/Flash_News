// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:news_app/Theme/themes.dart';

class ListWidget extends StatelessWidget {
  final int index;
  const ListWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: 420,
          child: Stack(
            children: [
              Container(
                height: 120,
                width: 350,
                child: Card(
                  color: Color.fromARGB(255, 248, 255, 241),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(50))),
                  child: Container(
                    child: Row(children: [
                      Container(
                        height: 120,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(40)),
                          image: DecorationImage(
                            image: AssetImage("Assets/Technology.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                          height: 106,
                          width: 220,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 248, 255, 241),
                          ),
                          padding: EdgeInsets.only(
                              left: 12, right: 2, top: 1, bottom: 1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Title",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: b,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Container(
                                height: 20,
                                width: 80,
                                color: Color.fromARGB(255, 232, 168, 189),
                                child: Text(
                                  "Technology",
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text("Description",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 90, 90, 90),
                                      fontWeight: FontWeight.w700)),
                              SizedBox(
                                height: 1,
                              ),
                              Text("Time: 12:04 pm.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500))
                            ],
                          )),
                    ]),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 314, top: 40),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 189, 224, 234),
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
