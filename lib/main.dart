import 'package:flutter/material.dart';
import 'package:news_app/Pages/HomePage.dart';
//Flash News
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
