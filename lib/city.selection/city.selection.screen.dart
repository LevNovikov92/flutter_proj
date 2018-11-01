import 'package:flutter/material.dart';
import 'package:flutter_proj/city.selection/city.search.dart';
import 'package:flutter_proj/widgets/radio.button.dart';

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
      body: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
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
                )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RadioButton(_selectedService == SelectedService.rent, "Rent",
                      _rentClickListener),
                  RadioButton(_selectedService == SelectedService.buy, "Buy",
                      _buyClickListener),
                ],
              ),
              CitySearchWidget(),
            ]),
      ),
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

enum SelectedService { rent, buy }