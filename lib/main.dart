import 'package:day6_30doc/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:day6_30doc/pages/page_1.dart';

void main()=>runApp(Day6App());

class Day6App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day 6 30 DoC',
      home: Page1(),
    );
  }
}

