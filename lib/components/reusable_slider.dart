import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ReusableSlider extends StatelessWidget {
  final Function onChanged;
  final double min;
  final double max;
  final int value;

  const ReusableSlider({
    @required this.onChanged,
    @required this.min,
    @required this.max,
    @required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E98),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
          thumbColor: kBottomContainerColor,
          overlayColor: kBottomContainerColor.withAlpha(0x1f)),
      child: Slider(
        value: value.toDouble(),
        min: min,
        max: max,
        onChanged: onChanged,
      ),
    );
  }
}
