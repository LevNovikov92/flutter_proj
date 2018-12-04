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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(getImageByIndex(selectedPage)),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.lightBlue.withAlpha(50), BlendMode.color)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 150.0,
              alignment: Alignment.center,
              child:
                  StepperWidget(totalPages, selectedPage, "Get Started", () { clickListener(context); }),
              decoration: BoxDecoration(color: Colors.blueGrey[700]),
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
}
