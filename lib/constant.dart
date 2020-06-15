import 'package:flutter/material.dart';
import 'package:subgroup/helper/hexToColor.dart';


final shadowColor = Color(0xFF878787).withOpacity(.16);
final placeHolderColor = Colors.lightGreenAccent;
final startGradient = hexToColor('#98DE5B');
//hexToColor('#98DE5B') green
//hexToColor('#08E1AE') green
final endGradient = hexToColor('#08E1AE');

BorderRadiusGeometry radius = BorderRadius.only(
  topLeft: Radius.circular(30),
  topRight: Radius.circular(30),
);
