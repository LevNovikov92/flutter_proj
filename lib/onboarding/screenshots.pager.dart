import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/stepper.dart';
import 'package:flutter_proj/pre.signup/role.selection.screen.dart';

class ScreenshotsPager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScreenshotsPagerState();
}

class ScreenshotsPagerState extends State<ScreenshotsPager> {
  final totalPages = 3;
  var selectedPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 44.0, left: 48.0, right: 48.0, bottom: 24.0),
            child: Center(
              child: Text(
                  getTextByIndex(selectedPage),
                  textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              )
            )
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 0.0, left: 32.0, right: 32.0, bottom: 24.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(getImageByIndex(selectedPage)),
                    fit: BoxFit.cover,
                ),
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 150.0,
              alignment: Alignment.center,
              child:
                  StepperWidget(totalPages, selectedPage, "Get Started", () { clickListener(context); }),
            ),
          )
        ],
      ),
    );
  }

  void clickListener(BuildContext context) {
    if (selectedPage == totalPages - 1) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RoleSelectionScreen()));
    } else {
      setState(() {
        selectedPage++;
      });
    }
  }

  String getImageByIndex(int selectedPage) {
    return "assets/background.png";
  }

  String getTextByIndex(int selectedPage) {
    switch(selectedPage) {
      case 1:
        return "Create your profile for accurate advice";
      case 2:
        return "Match your profile with the local advicers";
      case 3:
        return "Match your profile with the local advicers";
    }
    return "";
  }
}
