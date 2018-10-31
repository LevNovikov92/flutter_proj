import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/custom.button.dart';
import 'package:flutter_proj/city.selection/city.search.dart';

class CitySelectionScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CitySelectionState();
}

class CitySelectionState extends State<CitySelectionScreen> {

  var _selectedService = SelectedService.rent;

  @override
  @override
  Widget build(BuildContext context) {
    var style = TextStyle(
      fontSize: 20.0,
    );

    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: EdgeInsets.only(top: 64.0, bottom: 22.0),
              child: Center(
                  child: Text(
                    "I am looking for...",
                    textAlign: TextAlign.center,
                    style: style,
                  )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RadioButton(_selectedService == SelectedService.rent, "Rent", _rentClickListener),
                RadioButton(_selectedService == SelectedService.buy, "Buy", _buyClickListener),
              ],
            ),
            CitySearchWidget(),
            Text("Some text")
          ]),
    );
  }

  void _rentClickListener() {
    setState(() {
      _selectedService = SelectedService.rent;
    });
  }

  void _buyClickListener() {
    setState(() {
      _selectedService = SelectedService.buy;
    });
  }

}

enum SelectedService {
  rent,
  buy
}

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
        child:
        GestureDetector(
          onTap: _callback,
          child: Container(
            padding: EdgeInsets.all(10.0),
            width: 100.0,
            child: Center(
              child: Text(_text,
                  style: TextStyle(
                      color:
                      _selected ? Colors.white : Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ),
            decoration: BoxDecoration(
              color: _selected
                  ? Colors.red[500]
                  : Colors.transparent,
              border: Border.all(
                  width: 1.0,
                  color: _selected
                      ? Colors.red[500]
                      : Colors.grey),
              borderRadius: const BorderRadius.all(const Radius.circular(20.0)),
            ),
          ),
        )
    );
  }
}