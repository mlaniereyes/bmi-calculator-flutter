import 'package:flutter/material.dart';
import '../contants.dart';
import '../contants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.label});

  final Function onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBackgroundBottomColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(label, style: kLargeButtonTextStyle),
        ),
      ),
    );
  }
}
