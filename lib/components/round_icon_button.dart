import 'package:flutter/material.dart';

// if you want to create a widget totally from scratch, then you just need to
// dive deep into the widget code and see what they are made of,
// and build a new one yourself

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
