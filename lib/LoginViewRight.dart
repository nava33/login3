import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginViewRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RotationTransition(
          turns: AlwaysStoppedAnimation(60 / 360),
          child: Container(
            width: 350,
            height: 350,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.all(Radius.circular(50.0)),
              ),
              color: Colors.amber,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 70, right: 40),
                    width: (MediaQuery.of(context).size.width) * 0.7,
                    child: Transform.rotate(
                      angle: -190 / 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            margin: EdgeInsets.only(right: 20),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.all(
                                const Radius.circular(35.0),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Email id Or Username",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                              ),
                              style: TextStyle(color: Colors.pinkAccent),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.all(
                                Radius.circular(35.0),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Password",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                              ),
                              style: TextStyle(color: Colors.pinkAccent),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Checkbox(
                                value: false,
                                onChanged: (val) {},
                              ),
                              Text(
                                "Remember password",
                                style: TextStyle(color: Colors.pink),
                              )
                            ],
                          ),
                          Container(
                            child: SizedBox(
                              width: 120,
                              child: RaisedButton(
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.all(
                                    Radius.circular(35.0),
                                  ),
                                ),
                                color: Colors.pink,
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            margin: EdgeInsets.only(right: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
