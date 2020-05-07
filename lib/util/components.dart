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
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      constraints: BoxConstraints.tightForFinite(
        width: kScreenSize.width,
        height: kScreenSize.height * 0.4,
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [kThemePallete1, kThemePallete2],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            'Meet',
            style: kPage2HeadingStyle.copyWith(fontSize: 48),
          ),
          Text('Love', style: kPage2HeadingStyle.copyWith(fontSize: 68))
        ],
      ),
    );
  }
}

class Set1ScreenLayout extends StatelessWidget {
  const Set1ScreenLayout({@required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: kThemeWhite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            bottom: 0,
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    PageHeadingSet1(),
                    Expanded(
                      child: Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 15, top: 80),
                          child: child),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}