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
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 134.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 32.0),
                child: Image.asset("assets/alarm.png"),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.only(bottom: 4.0),
                decoration: BoxDecoration(color: Colors.lightBlue[600]),
                child: TextField(
                  onChanged: null,
                  decoration: new InputDecoration.collapsed(
                    hintText: 'Login...',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.only(top: 4.0),
                decoration: BoxDecoration(color: Colors.lightBlue[600]),
                child: TextField(
                  onChanged: null,
                  decoration: new InputDecoration.collapsed(
                    hintText: 'Password...',
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: FlatButton(onPressed: _loginClickListener, child: Text("LOGIN")),
                ),
              )
            ],
          ),
        )
      ),
    );
  }

  void _loginClickListener() {

  }
}
