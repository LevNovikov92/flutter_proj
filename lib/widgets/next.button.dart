import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NextButton extends StatelessWidget {
  final GestureTapCallback _callback;

  NextButton(this._callback);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _callback,
      child: Container(
        width: 60.0,
        height: 60.0,
        child: Center(
          child: SvgPicture.asset("assets/arrow_right-24px.svg"),
        ),
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent[200],
          borderRadius: const BorderRadius.all(const Radius.circular(30.0)),
        ),
      ),
    );
  }
}
