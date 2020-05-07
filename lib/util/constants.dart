import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Size kScreenSize;
enum IconSize{large, small}

const Color kThemePallete1 = Color(0xFF1C5E80);
const Color kThemePallete2 = Color(0xFF85D6FF);
const Color kThemePallete3 = Color(0xFF38BDFF);
const Color kThemePallete4 = Color(0xFF426B80);
const Color kThemePallete5 = Color(0xFF2D97CC);
const Color kThemeWhite = Color(0xFFEEEEEE);


const ImageProvider kMale1Image = AssetImage('assets/male1.png');
const ImageProvider kFemale1Image = AssetImage('assets/female1.png');
const ImageProvider kMale2Image = AssetImage('assets/male2.png');
const ImageProvider kFemale2Image = AssetImage('assets/female2.png');

const TextStyle kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w600,
  fontSize: 20,
);

final kPage1HeadingStyle =  GoogleFonts.fredokaOne(fontSize: 38, color: kThemePallete4);
