import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  final title;

  Landing(this.title);

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

class LandingOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                '-',
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 30,
            ),
          ),

          // SliverFixedExtentList(
          //   itemExtent: 50.0,
          //   delegate: SliverChildBuilderDelegate(
          //         (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         color: Colors.lightBlue[100 * (index % 9)],
          //         child: Text('List Item $index'),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
