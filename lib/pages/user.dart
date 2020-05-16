import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  State<UserPage> createState() => new _UserPageState();
}

class _UserPageState extends State<UserPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          actions: <Widget>[
            new Icon(
              Icons.message,
              color: Colors.white,
            )
          ],
        ),
        body: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Container(
                  color: Colors.blue,
                  height: 240.0,
                ),
                new Container(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          alignment: Alignment.center,
                          height: 80.0,
                          child: Image.network(
                              "https://ps.ssl.qhimg.com/t01ac2d9762328f953c.jpg"),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          alignment: Alignment.center,
                          child: new Text(
                            '我是昵称',
                            style: new TextStyle(
                                color: Colors.white, fontSize: 15.0),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ));
  }
}
