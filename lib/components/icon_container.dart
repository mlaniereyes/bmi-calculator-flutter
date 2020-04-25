import 'package:flutter/material.dart';
import '../contants.dart';

class ReusableIcon extends StatelessWidget {
  ReusableIcon({this.fontIcon, this.label});

  final IconData fontIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          fontIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
