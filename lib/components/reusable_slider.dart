import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/routes/input_page.dart';


class ReusableSlider extends StatelessWidget {
  const ReusableSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E98),
          thumbShape:
              RoundSliderThumbShape(enabledThumbRadius: 12.0),
          thumbColor: kBottomContainerColor,
          overlayColor: kBottomContainerColor.withAlpha(0x1f)),
      child: Slider(
        value: height.toDouble(),
        min: 59.0,
        max: 79.0,
        divisions: 101,
        onChanged: (double heightInput) {
          setState(() {
            height = heightInput.round();
          });
        },
      ),
    );
  }
}