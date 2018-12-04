import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/stepper.dart';
import 'package:flutter_proj/onboarding/screenshots.pager.dart';

class AppDescriptionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              child: Text("App logo"),
            ),
          ),
          Center(
            child: Container(
              child: Text("The app to connect you with local property advice",
                textAlign: TextAlign.center,),
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: StepperWidget(3, 0, "Get started", () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ScreenshotsPager()));
              }),
            ),
          )
        ],
      )
    );
  }
}
