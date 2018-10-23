import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {

  CustomButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Image.asset("assets/alarm.png"),
      onPressed: onPressed,
    );
  }
}