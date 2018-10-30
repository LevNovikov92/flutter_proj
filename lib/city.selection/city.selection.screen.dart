import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/custom.button.dart';
import 'package:flutter_proj/city.selection/city.search.dart';

class CitySelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var style = TextStyle(
      fontSize: 12.toDouble(),
    );

    return Scaffold(
      body:
//        Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.start,
//          mainAxisSize: MainAxisSize.max,
//          children: [
//
//              Flexible(child: CitySearchWidget())
//          ])
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
            Center(
                child: Text(
              "I am looking for...",
              textAlign: TextAlign.center,
              style: style,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text("Rent"),
                  onPressed: _rentalClickListener,
                ),
                RaisedButton(
                  child: Text("Get advice"),
                  onPressed: _adviceClickListener,
                )
              ],
            ),
            CitySearchWidget(),
            Text("Some text")
          ]),
    );
  }

  void _rentalClickListener() {}

  void _adviceClickListener() {}
}
