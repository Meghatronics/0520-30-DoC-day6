import 'dart:async';

import 'package:day6_30doc/pages/page_2.dart';
import 'package:day6_30doc/util/components.dart';
import 'package:day6_30doc/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  double _iconHeight = 0;
  double _iconWidth = 0;

  void _dropIcons() {
    setState(() {
      _iconHeight = kScreenSize.height * 0.50;
      _iconWidth = kScreenSize.width * 0.20;
    });
  }

  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    Timer(Duration(milliseconds: 500), _dropIcons);
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Page2()),
        );
      },
      child: Container(
        constraints: BoxConstraints.expand(),
        color: kThemeWhite,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: kThemePallete3,
                  borderRadius: BorderRadius.circular(15)),
              constraints: BoxConstraints.tightForFinite(
                  width: kScreenSize.width * 0.45,
                  height: kScreenSize.height * 0.2),
            ),
            AnimatedPositioned(
              top: _iconHeight,
              left: _iconWidth,
              child: Male1Display(IconSize.large),
              duration: Duration(milliseconds: 500),
            ),
            AnimatedPositioned(
              bottom: _iconHeight,
              right: _iconWidth,
              child: Female1Display(IconSize.large),
              duration: Duration(milliseconds: 500),
            ),
            AnimatedPositioned(
              bottom: kScreenSize.height * 0.3,
              child: Text('MEET LOVE', style: kPage1HeadingStyle),
              duration: Duration(milliseconds: 500),
            )
          ],
        ),
      ),
    ));
  }
}
