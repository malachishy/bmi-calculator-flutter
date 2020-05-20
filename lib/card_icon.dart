import 'package:flutter/material.dart';
import 'constants.dart';

// Made TextStyle into its own const widget for easy referencing and updating when we reuse this widget.


class CardIcon extends StatelessWidget {
  final IconData cardIcon;
  final String cardLabel;

  CardIcon({@required this.cardIcon, @required this.cardLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(cardIcon, size: 84),
        SizedBox(
          height: 18,
        ),
        Text(
          cardLabel,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
