import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Colors.black38,
  fontFamily: 'OpenSans',
);

final TextStyle menuTextStyle = TextStyle(color: Colors.black38,fontSize: 18);

final Color backGroundColor = Color(0XFFCFD8DC);

final kLabelStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final nLabelTextStyle = TextStyle(
  color: Colors.black,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Colors.grey.shade100,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.white70,
      blurRadius: 3.0,
      offset: Offset(0, 2),
    ),
  ],
);

final cBoxDecorationStyle = BoxDecoration(
  color: Colors.white24,
  border: Border.all(
    color: Colors.grey.shade500,
    width: 2.0,
  ),
  borderRadius: BorderRadius.circular(16.0),
  gradient: LinearGradient(
      colors: [
        Colors.white24,
        Colors.grey.shade300
      ]
  ),
);