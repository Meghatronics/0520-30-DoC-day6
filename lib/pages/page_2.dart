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
    kScreenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Set1ScreenLayout(
        child:Page2Content()
      ),
    );
  }
}

class Page2Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flexible(
              child: Text('Sign Up',
                  textAlign: TextAlign.start, style: kPage1HeadingStyle)),
          Flexible(
            child: ConstrainedBox(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('SIGN IN WITH PHONENUMBER'),
              ),
              constraints: BoxConstraints.tightForFinite(
                  width: kScreenSize.width, height: 200),
            ),
          ),
          Flexible(
            child: Text(
              kSignUpAgreementNotice,
            ),
          )
        ],
      ),
    );
  }
}


