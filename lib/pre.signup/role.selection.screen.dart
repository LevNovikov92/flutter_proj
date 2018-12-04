import 'package:flutter/material.dart';
import 'package:flutter_proj/domain/repository/starter.profile.repo.dart';
import 'package:flutter_proj/widgets/next.button.dart';

class RoleSelectionScreen extends StatelessWidget {

//  final StarterProfileRepo profileRepo;

  void _onClientClick() {

  }

  void _onAdvisorClick() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text("What are you looking for?"),
          ),
          Expanded(
            flex: 1,
              child: Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "I am looking for advicer",
                    textAlign: TextAlign.center,
                  ),
                ),
                NextButton(_onClientClick)
              ],
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
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "I am local advicer",
                    textAlign: TextAlign.center,
                  ),
                ),
                NextButton(_onAdvisorClick)
              ],
            ),
          )),
        ],
    ));
  }
}
