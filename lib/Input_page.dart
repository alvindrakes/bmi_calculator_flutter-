import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const cardColour = Color(0xFF101426);
const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0xFFEC5356);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF090C22),
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: cardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                )
              ],
            )),
            Expanded(child: ReusableCard(colour: cardColour)),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: cardColour)),
                Expanded(child: ReusableCard(colour: cardColour)),
              ],
            )),
            Container(
              color: bottomContainerColour,
              height: bottomContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.all(10.0),
            )
          ],
        ));
  }
}
