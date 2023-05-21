import 'package:bmi_calc/reusablecard.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'calculator_brain.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.resultText, this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
              padding: EdgeInsets.only(top: 15, left: 10),
              child: Text(
                'Your Result',
                style: kResultTitle,
              ),
            )),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kactiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      textAlign: TextAlign.center,
                      style: kbmistyle,
                    ),
                    Text(
                      bmiResult,
                      textAlign: TextAlign.center,
                      style: kbminumberstyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kbodystyle,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text("RE-CALCULATE", style: kLargeButtonStyle),
                ),
                color: Color(0xFFEB1555),
                height: 65,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              ),
            ),
          ],
        ));
  }
}
