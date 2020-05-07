import 'package:day6_30doc/util/components.dart';
import 'package:day6_30doc/util/constants.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            bottom: 0,
            top: 0,
            left: 0,
            right: 0,
            child: Column(children: <Widget>[
              PageHeadingSet1(),
              Text('Sign Up'),
              Card(
                child: ListTile(
                  leading: Placeholder(),
                  title: Text('SIGN IN WITH FACEBOOK'),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
