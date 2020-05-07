import 'package:day6_30doc/util/constants.dart';
import 'package:flutter/material.dart';

class Male1Display extends StatelessWidget {
  Male1Display(this.iconSize);

  final IconSize iconSize;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kThemePallete2,
      backgroundImage: kMale1Image,
      radius: iconSize == IconSize.large ? 50 : 20,
    );
  }
}

class Male2Display extends StatelessWidget {
  Male2Display(this.iconSize);

  final IconSize iconSize;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kThemePallete2,
      backgroundImage: kMale2Image,
      radius: iconSize == IconSize.large ? 50 : 20,
    );
  }
}

class Female1Display extends StatelessWidget {
  Female1Display(this.iconSize);

  final IconSize iconSize;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kThemePallete2,
      backgroundImage: kFemale1Image,
      radius: iconSize == IconSize.large ? 50 : 20,
    );
  }
}

class Female2Display extends StatelessWidget {
  Female2Display(this.iconSize);

  final IconSize iconSize;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kThemePallete2,
      backgroundImage: kFemale2Image,
      radius: iconSize == IconSize.large ? 50 : 20,
    );
  }
}

class ThemedButton extends StatelessWidget {
  ThemedButton({@required this.label, @required this.onTap});

  final String label;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      color: kThemePallete1,
      height: 30,
      width: double.infinity,
      child: RawMaterialButton(
          onPressed: onTap,
          constraints: BoxConstraints.expand(),
          child: Text(
            label.toUpperCase(),
            style: kButtonTextStyle,
          )),
    );
  }
}


class PageHeadingSet1 extends StatelessWidget {
  const PageHeadingSet1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
      colors: [kThemePallete1, kThemePallete2],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    )), 
    child: Row(
      children: <Widget>[
        Text('Meet', style: kPage1HeadingStyle,),
        Text('Love', style: kPage1HeadingStyle.copyWith(fontSize: 48))
      ],
    ),);
  }
}