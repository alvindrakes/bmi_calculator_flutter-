import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.label, @required this.onTap});

  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
        // if there's more that 1 page in app, it's better to define
        // all routes in main.dart file
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Text(
          label,
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        color: kBottomContainerColour,
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}
