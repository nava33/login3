import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginViewLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RotationTransition(
          turns: AlwaysStoppedAnimation(30 / 360),
          child: Container(
            width: 350,
            height: 350,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.all(Radius.circular(50.0)),
              ),
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 80, top: 20),
                    width: (MediaQuery.of(context).size.width) * 0.7,
                    child: Transform.rotate(
                      angle: -90 / 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
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
                          SizedBox(
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
