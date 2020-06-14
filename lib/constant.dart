import 'package:flutter/material.dart';
import 'package:subgroup/helper/hexToColor.dart';


final shadowColor = Color(0xFF878787).withOpacity(.16);
final startGradient = hexToColor('#98DE5B');
final endGradient = hexToColor('#08E1AE');

BorderRadiusGeometry radius = BorderRadius.only(
  topLeft: Radius.circular(30),
  topRight: Radius.circular(30),
);
