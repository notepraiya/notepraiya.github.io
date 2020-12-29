import 'package:flutter/material.dart';
//import 'package:notepraiya_github_io/hello_word.dart';
import 'landing.dart';

const app_title = "NotePraiya's Portfolio";

void main() {
  runApp(MatApp());
}

class MatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: app_title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Landing(),
    );
  }
}

