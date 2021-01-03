import 'package:flutter/material.dart';

import 'color.dart';
//import 'package:notepraiya_github_io/hello_word.dart';
import 'landing_gridview.dart';
import 'landing_sliver.dart';

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
        primarySwatch: colorTealAccentCustom,
        accentColor: Colors.pinkAccent,
      ),
      //home: LandingGridView(app_title),
      home: LandingSliver(app_title),
    );
  }
}
