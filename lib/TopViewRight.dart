import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopViewRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        children: <Widget>[
          Container(
            width: (MediaQuery.of(context).size.width) * 0.4,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(60 / 360),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 150,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(30.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 20, top: 10),
                                  child: Transform.rotate(
                                    angle: -180 / 180,
                                    child: Image.asset("assets/logo.png",
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  left: -25,
                  top: 50,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            width: (MediaQuery.of(context).size.width) * 0.6,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Welcome Back,",
                  style: TextStyle(color: Colors.amber, fontSize: 20),
                ),
                Text(
                  "Emily Jones",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
