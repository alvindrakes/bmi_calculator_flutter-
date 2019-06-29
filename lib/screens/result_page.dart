import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Result Page'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(15.9),
                child: Text(
                  'Your result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Overwight',
                        style: kResultTextStyle,
                      ),
                      Text(
                        '18.3',
                        style: kBmiTextStyle,
                      ),
                      Text(
                        'hello buddy',
                        style: kBodyTextStyle,
                      ),
                    ],
                  ),
                )),
            BottomButton(
              label: 'RECALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
