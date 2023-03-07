import 'package:flutter/material.dart';
import 'package:news_app/Pages/CategoryPages.dart';
import 'package:news_app/Theme/themes.dart';
import 'package:news_app/Widget/ListWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: background,
        title: Text(
          "Flash News",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
            color: b,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Explore today's",
                style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold, color: b),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "world news",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 206, 205, 205),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: TextField(
                            cursorWidth: 2,
                            cursorColor: Colors.blue,
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search here',
                            )),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: b,
                      ),
                      child: Icon(
                        Icons.search,
                        size: 30,
                        color: Color.fromARGB(255, 133, 133, 133),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryPages(
                                    categoryTitle: "Technology")),
                          );
                        },
                        child: CardImage("Technology")),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryPages(
                                    categoryTitle: "Sports")),
                          );
                        },
                        child: CardImage("Sports")),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryPages(
                                    categoryTitle: "Science")),
                          );
                        },
                        child: CardImage("Science")),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryPages(
                                    categoryTitle: "Entertainment")),
                          );
                        },
                        child: CardImage("Entertainment")),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryPages(
                                    categoryTitle: "Health")),
                          );
                        },
                        child: CardImage("Health")),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryPages(
                                    categoryTitle: "Business")),
                          );
                        },
                        child: CardImage("Business")),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Latest ",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: b,
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
              SizedBox(
                height: 15,
              ),
              Container(
                height: 210,
                width: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListWidget(index: index);
                  },
                  itemCount: 8,
                ),
              )
            ]),
      ),
    );
  }

  Widget CardImage(String imagename) {
    return Container(
      margin: EdgeInsets.all(7),
      padding: EdgeInsets.all(20),
      alignment: Alignment.bottomCenter,
      height: 280,
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: Colors.grey,
          ),
        ],
        image: DecorationImage(
            image: AssetImage("Assets/${imagename.toString()}.jpeg"),
            fit: BoxFit.cover),
      ),
      child: Text("${imagename}",
          style:
              TextStyle(color: w, fontWeight: FontWeight.bold, fontSize: 28)),
    );
  }
}
