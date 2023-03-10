// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:news_app/Pages/SingleItemPage.dart';
import 'package:news_app/Services/ApiService.dart';

import 'package:news_app/Theme/themes.dart';

import '../Model/ArticleModel.dart';

class ListWidget extends StatelessWidget {
  final String category;
  ListWidget({
    Key? key,
    required this.category,
  }) : super(key: key);
  ApiService service = ApiService();

  @override
  Widget build(BuildContext context) {
    String? author;
    String? title;
    String? description;
    String? url;
    String? urlToImage;
    String? publishedAt;
    String? content;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SingleItemPage(
                  category: category,
                  author: author,
                  title: title,
                  description: description,
                  url: url,
                  urlToImage: urlToImage,
                  publishedAt: publishedAt,
                  content: content)),
        );
      },
      child: FutureBuilder(
          future: service.getArticle(category),
          builder:
              ((BuildContext context, AsyncSnapshot<List<Article>?> snapshot) {
            if (snapshot.hasData) {
              List<Article>? articles = snapshot.data;
              return Container(
                height: 210,
                width: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    author = snapshot.data![index].author.toString();
                    title = snapshot.data![index].title.toString();
                    description = snapshot.data![index].description.toString();
                    url = snapshot.data![index].url.toString();
                    urlToImage = snapshot.data![index].urlToImage.toString();
                    publishedAt = snapshot.data![index].publishedAt
                        .toString()
                        .substring(0, 10);
                    content = snapshot.data![index].content.toString();
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
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(50))),
                                  child: Container(
                                    child: Row(children: [
                                      Container(
                                        height: 120,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(40)),
                                          image: DecorationImage(
                                            image: NetworkImage(snapshot
                                                .data![index].urlToImage
                                                .toString()),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          height: 106,
                                          width: 220,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                          padding: EdgeInsets.only(
                                              left: 12,
                                              right: 2,
                                              top: 1,
                                              bottom: 1),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "${snapshot.data![index].title.toString()}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: b,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Text(
                                                  "Published At: ${snapshot.data![index].publishedAt.toString()}",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w500))
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
                  },
                  itemCount: snapshot.data!.length,
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          })),
    );
  }
}
