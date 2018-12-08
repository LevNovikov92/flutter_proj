import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/stepper.dart';
import 'package:flutter_proj/onboarding/screenshots.pager.dart';

class AppDescriptionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 130.0),
              child: Center(
                child: Text("App logo"),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(40.0),
                child: Center(
                  child: Text("The app to connect you with local property advice",
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0),),
                ),
              )
            ),
            Container(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: StepperWidget(3, 0, "Get started", () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ScreenshotsPager()));
                }),
              ),
            )
          ],
        )
      )
    );
  }
}
