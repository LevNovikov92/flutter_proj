import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
  final bool _selected;
  final String _text;
  final GestureTapCallback _callback;

  RadioButton(this._selected, this._text, this._callback);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        height: 40.0,
        child: GestureDetector(
          onTap: _callback,
          child: Container(
            padding: EdgeInsets.all(10.0),
            width: 100.0,
            child: Center(
              child: Text(_text,
                  style: TextStyle(
                      color: _selected ? Colors.white : Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ),
            decoration: BoxDecoration(
              color: _selected ? Colors.red[500] : Colors.transparent,
              border: Border.all(
                  width: 1.0, color: _selected ? Colors.red[500] : Colors.grey),
              borderRadius: const BorderRadius.all(const Radius.circular(20.0)),
            ),
          ),
        ));
  }
}
