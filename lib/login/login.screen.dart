import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/custom.button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Color(), BlendMode.clear)),
        ),
        child: Column(
          children: <Widget>[
            Image.asset("assets/alarm.png"),
            TextField(
              onChanged: null,
              decoration: new InputDecoration(
                hintText: 'Type something',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
