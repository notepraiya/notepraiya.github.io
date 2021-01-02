import 'package:flutter/material.dart';

class LandingSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: height / 2.5,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                '-',
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/img/runze-shi-1kIyfRdLMxI-unsplash.jpg',
                    fit: BoxFit.cover,
                  ),
                  // Image.network(
                  //   'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                  //   fit: BoxFit.cover,
                  // ),
                  // const DecoratedBox(
                  //   decoration: BoxDecoration(
                  //     gradient: LinearGradient(
                  //       begin: Alignment(0.0, 0.5),
                  //       end: Alignment(0.0, 0.0),
                  //       colors: <Color>[
                  //         Color(0x60000000),
                  //         Color(0x00000000),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            //   actions: <Widget>[
            //   IconButton(
            //     icon: const Icon(Icons.add_circle),
            //     tooltip: 'Add new entry',
            //     onPressed: () {
            //       print('aa');
            //     },
            //   ),
            // ],
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 300.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 350.0,
                mainAxisSpacing: 28.0,
                crossAxisSpacing: 28.0,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _children[index];
                },
                childCount: _children.length,
              ),
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

          SliverToBoxAdapter(
            child: Container(
              color: Colors.tealAccent,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Design by Praiya Kitpaisan, Photo by '),
                  TextButton(
                    onPressed: () {
                      print('https://unsplash.com/@wizard_s?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText');
                    },
                    child: Text(
                      'Runze Shi',
                    ),
                  ),
                  Text(' on '),
                  TextButton(
                    onPressed: () {
                      print(
                          'https://unsplash.com/t/textures-patterns?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText');
                    },
                    child: Text(
                      'Unsplash',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> _children = [
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
    alignment: Alignment.center,
    color: Colors.teal[100],
    child: Text('Grid Item 0'),
  ),
  Container(
    alignment: Alignment.center,
    color: Colors.teal[200],
    child: Text('Grid Item 2'),
  ),
  Container(
    alignment: Alignment.center,
    color: Colors.teal[300],
    child: Text('Grid Item 3'),
  ),
  Container(
    alignment: Alignment.center,
    color: Colors.teal[400],
    child: Text('Grid Item 4'),
  ),
  Container(
    alignment: Alignment.center,
    color: Colors.teal[500],
    child: Text('Grid Item 5'),
  ),
  Container(
    alignment: Alignment.center,
    color: Colors.teal[600],
    child: Text('Grid Item 6'),
  ),
  Container(
    alignment: Alignment.center,
    color: Colors.teal[700],
    child: Text('Grid Item 7'),
  ),
  Container(
    padding: const EdgeInsets.all(8),
    child: Center(
      child: CircularProgressIndicator(),
    ),
    color: Colors.teal[100],
  ),
];
