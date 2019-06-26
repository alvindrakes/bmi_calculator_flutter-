import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF101426);
const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0xFFEC5356);

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  void updateColour(Gender selectedGender) {
    selectedGender == Gender.Male
        ? maleCardColour = activeCardColour
        : maleCardColour = inactiveCardColour;
    selectedGender == Gender.Female
        ? femaleCardColour = activeCardColour
        : femaleCardColour = inactiveCardColour;
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.Male);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.Female);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                )
              ],
            )),
            Expanded(child: ReusableCard(colour: activeCardColour)),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: activeCardColour)),
                Expanded(child: ReusableCard(colour: activeCardColour)),
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
