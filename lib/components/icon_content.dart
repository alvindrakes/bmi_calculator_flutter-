import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.text});
  // when you have a constructor, it's a good idea to mark the parameter as
  // required so there will be no unnecessary errors

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFFFFFFFF),
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
