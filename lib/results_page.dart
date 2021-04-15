import 'package:fd10/constants.dart';
import 'package:fd10/reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiNumber,
      @required this.bmiText,
      @required this.bmiMeaning});

  final String bmiNumber;
  final String bmiText;
  final String bmiMeaning;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  'Your Result',
                  style: kNumberTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              kolor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiNumber,
                    style: kBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      bmiMeaning,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ),
                  BottomButton(
                    buttonTitle: 'RE-CALCULATE',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
