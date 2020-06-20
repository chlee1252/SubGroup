import 'package:flutter/material.dart';
import 'package:subgroup/helper/hexToColor.dart';

final shadowColor = Color(0xFF878787).withOpacity(.16);
final placeHolderColor = Colors.lightGreenAccent;
final startGradient = hexToColor('#98DE5B');
final endGradient = hexToColor('#08E1AE');
final TextStyle titleTextStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0);
final List<Color> greenGradient = [
  startGradient,
  endGradient,
];
final LinearGradient buttonGradient = LinearGradient(
  colors: greenGradient,
  begin: const FractionalOffset(0.2, 0.2),
  end: const FractionalOffset(1.0, 1.0),
  tileMode: TileMode.clamp,
);

BorderRadiusGeometry homeMenuRadius = BorderRadius.only(
  topLeft: Radius.circular(30),
  topRight: Radius.circular(30),
);
