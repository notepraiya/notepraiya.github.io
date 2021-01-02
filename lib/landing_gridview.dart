import 'package:flutter/material.dart';

class LandingGridView extends StatelessWidget {
  final title;

  LandingGridView(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 960,
            child: GridView.count(
              primary: true,
              padding: const EdgeInsets.all(10.0),
              crossAxisSpacing: 28,
              mainAxisSpacing: 28,
              crossAxisCount: 3,
              children: <Widget>[
                Card(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: LinearProgressIndicator(),
                        ),
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
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(""),
                  color: Colors.teal[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(''),
                  color: Colors.teal[200],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(''),
                  color: Colors.teal[300],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(''),
                  color: Colors.teal[400],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(''),
                  color: Colors.teal[500],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                  color: Colors.teal[600],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
