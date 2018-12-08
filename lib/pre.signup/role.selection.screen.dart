import 'package:flutter/material.dart';
import 'package:flutter_proj/domain/repository/starter.profile.repo.dart';
import 'package:flutter_proj/widgets/next.button.dart';

class RoleSelectionScreen extends StatelessWidget {

  final StarterProfileRepo profileRepo;

  void _onClientClick() {}

  void _onAdviserClick() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          padding:
              EdgeInsets.only(top: 48.0, left: 16.0, right: 16.0, bottom: 16.0),
          child: Text(
            "What are you looking for?",
            style: TextStyle(fontSize: 20.0, color: Colors.cyanAccent[700]),
          ),
        ),
        Container(
          height: 1.0,
          decoration: BoxDecoration(color: Colors.cyanAccent[700]),
        ),
        Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Center(
                      child: Container(
                        child: Image.asset("assets/alarm.png"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(24.0),
                      child: Text(
                        "I am looking for advicer",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    NextButton(_onClientClick)
                  ],
                ),
              ),
            )),
        Container(
          height: 1.0,
          decoration: BoxDecoration(color: Colors.grey[500]),
        ),
        Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Center(
                      child: Container(
                        child: Image.asset("assets/alarm.png"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(24.0),
                      child: Text(
                        "I am local advicer",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    NextButton(_onAdviserClick)
                  ],
                ),
              ),
            )),
      ],
    ));
  }
}
