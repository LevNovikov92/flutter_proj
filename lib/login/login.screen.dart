import 'package:flutter/material.dart';
import 'package:flutter_proj/city.selection/city.selection.screen.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

enum FormValidation {
  loginIncorrect, passwordIncorrect, success
}

class LoginScreenState extends State<LoginScreen> {

  var _login = "";
  var _password = "";
  var _formValidation = FormValidation.success;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.lightBlue.withAlpha(50), BlendMode.color)),
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
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[600].withAlpha(200)),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          onChanged: _onLoginChanged,
                          decoration: new InputDecoration.collapsed(
                            hintText: 'Login...',
                          ),
                        ),
                        _formValidation == FormValidation.loginIncorrect ?
                        Text("Loggin is incorrect") : Container()
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.only(top: 4.0),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[600].withAlpha(200)),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          onChanged: _onPasswordChanged,
                          decoration: new InputDecoration.collapsed(
                            hintText: 'Password...',
                          ),
                        ),
                        _formValidation == FormValidation.passwordIncorrect ?
                        Text("Wrong password") : Container()
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  decoration:
                  BoxDecoration(color: Colors.blueGrey[600].withAlpha(200)),
                  child: Center(
                    child: FlatButton(
                        onPressed: _loginClickListener, child: Text("LOGIN")),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  void _onLoginChanged(String login) {
    _login = login;
  }

  void _onPasswordChanged(String password) {
    _password = password;
  }

  void _loginClickListener() {
    setState(() {
      _formValidation = _validateForm(_login, _password);
      if (_formValidation == FormValidation.success) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CitySelectionScreen()),
        );
      }
    });
  }

  FormValidation _validateForm(String login, String password) {
    if (login.isEmpty) return FormValidation.loginIncorrect;
    if (password.isEmpty) return FormValidation.passwordIncorrect;
    return FormValidation.success;
  }

}
