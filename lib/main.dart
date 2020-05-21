import 'package:bmi_calculator/routes/results_page.dart';
import 'package:flutter/material.dart';
import 'routes/input_page.dart';
import 'calculator_brain.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/resultspage': (context) => ResultsPage(
              bmiResult: CalculatorBrain(height: height, weight: weight).calculateBMI(),
              resultText: CalculatorBrain(height: height, weight: weight).getResult(),
              detailText: CalculatorBrain(height: height, weight: weight).detailText(),
            )
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
    );
  }
}
