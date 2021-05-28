import 'package:flutter/material.dart';

import 'LoginViewLeft.dart';
import 'LoginViewRight.dart';
import 'TopViewLeft.dart';
import 'TopViewRight.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RightScreenDesign(),
    );
  }
}

///   Left Screen Design

class LeftScreenDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.pink, Colors.deepOrange])),
        child: Column(
          children: <Widget>[
            Flexible(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: TopView(),
              ),
              flex: 2,
            ),
            Flexible(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: LoginViewLeft(),
                    left: -70,
                    top: 55,
                  )
                ],
              ),
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}

///   Right Screen Design

class RightScreenDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.pink, Colors.deepOrange])),
        child: Column(
          children: <Widget>[
            Flexible(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: TopViewRight(),
              ),
              flex: 2,
            ),
            Flexible(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: LoginViewRight(),
                    right: -70,
                    top: 55,
                  )
                ],
              ),
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
