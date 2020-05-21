import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/card_icon.dart';
import 'package:bmi_calculator/components/resuable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_slider.dart';

enum Gender {
  male,
  female,
}
int height = 69;
int weight = 90;
bool isCardActive;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender genderInput;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderInput = Gender.male;
                        weight = 170;
                        height = 70;
                      });
                    },
                    color: genderInput == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardIcon(
                      cardIcon: FontAwesomeIcons.mars,
                      cardLabel: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderInput = Gender.female;
                        height = 63;
                        weight = 130;
                      });
                    },
                    color: genderInput == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardIcon(
                      cardIcon: FontAwesomeIcons.venus,
                      cardLabel: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('HEIGHT', style: kLabelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: kBoldTextStyle),
                      Text(' in', style: kLabelTextStyle),
                    ],
                  ),
                  ReusableSlider(
                      value: height,
                      min: 59,
                      max: 79,
                      onChanged: (double sliderInput) {
                        setState(
                          () {
                            height = sliderInput.round();
                          },
                        );
                      })
                ],
              ),
              color: kActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('WEIGHT', style: kLabelTextStyle),
                          Text(
                            weight.toString(),
                            style: kBoldTextStyle,
                          ),
                        ]),
                    color: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonText: 'CALCULATE',
            onTap: () {
              Navigator.pushNamed(
                context,
                '/resultspage',
              );
            },
          ),
        ],
      ),
    );
  }
}
