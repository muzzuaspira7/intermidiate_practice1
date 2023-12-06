import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intermidiate_practice/detailpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      // home: DetailPage(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  //opacity
  var MyOpacity = 1.0;
  bool isVisible = true;
  //cross fade Animation
  bool isFirst = true;
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      reload();
    });
  }

  void reload() {
    setState(() {
      isFirst = false;
    });
  }

  //for scrollwheel
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       AnimatedContainer(
      //         width: _width,
      //         height: _height,
      //         color: Colors.lightBlue,
      //         duration: Duration(seconds: 2),
      //       ),
      //       ElevatedButton(
      //           onPressed: () {
      //             setState(() {
      //               if (flag) {
      //                 _width = 100.0;
      //                 _height = 200.0;
      //                 flag = false;
      //               } else {
      //                 _width = 100.0;
      //                 _height = 200.0;
      //                 flag = true;
      //               }
      //             });
      //           },
      //           child: Text('Click Me'))
      //     ],
      //   ),
      // ),

      //Opacity Effect
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       AnimatedOpacity(
      //         opacity: MyOpacity,
      //         curve: Curves.easeIn,
      //         duration: Duration(seconds: 2),
      //         child: Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       ElevatedButton(
      //           onPressed: () {
      //             setState(() {
      //               if (isVisible) {
      //                 MyOpacity = 0.0;
      //                 isVisible = false;
      //               } else {
      //                 MyOpacity = 1.0;
      //                 isVisible = true;
      //               }
      //             });
      //           },
      //           child: Text('Opacity Animation')),
      //     ],
      //   ),
      // ),

      //cross fade Animation
      // body: Column(
      //   children: [
      //     AnimatedCrossFade(
      //       duration: Duration(seconds: 2),
      //       firstChild: Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.grey.shade300,
      //       ),
      //       secondChild: Image.asset(
      //         'assets/images/listifyBG.png',
      //         width: 200,
      //         height: 200,
      //       ),
      //       crossFadeState:
      //           isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,

      //     ),
      //     ElevatedButton(
      //         onPressed: () {
      //           reload();
      //         },
      //         child: Text('Show')),
      //   ],
      // ),
      //Hero Animation
      // body: Container(
      //   child: Center(
      //     child: InkWell(
      //       onTap: () {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => DetailPage()));
      //       },
      //       child: Hero(
      //         tag: 'background',
      //         child: Image.asset(
      //           'assets/images/arjundas.jpg',
      //           width: 150,
      //           height: 100,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

      //Listwheel scroll view
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: arrIndex.map((value) {
            return Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                child: Center(
                  child: Text(
                    '$value',
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(21)),
                width: double.infinity,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
