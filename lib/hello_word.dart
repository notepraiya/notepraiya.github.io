import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      child: Container(
        width: 450.0,
        height: 150.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LinearProgressIndicator(),
            Expanded(
              child: Center(
                child: Text(
                  'Coming soon!',
                  style: TextStyle(
                    fontFamily: 'Redressed',
                    fontSize: 48.0,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
