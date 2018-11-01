import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/radio.button.dart';
import 'package:flutter_proj/advisor.selection/adviser.profile.card.dart';
import 'package:flutter_proj/domain/adviser.profile.dart';

class AdviserSearchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AdviserSearchState();
}

class AdviserSearchState extends State<AdviserSearchScreen> {
  final advisers = [
    AdviserProfile("John", "Doe", "Independent broker", "UAE", "Dubai", 4.6,
        "https://09feb49e49110d36ee93-a891c576beec38c5798e7413623891f4.ssl.cf3.rackcdn.com/4480.jpg"),
    AdviserProfile("Random", "Guy", "Real estate agency", "UAE", "Dubai", 4.3,
        "https://09feb49e49110d36ee93-a891c576beec38c5798e7413623891f4.ssl.cf3.rackcdn.com/4478.jpg"),
    AdviserProfile("John", "Doe", "Independent broker", "UAE", "Dubai", 4.6,
        "https://09feb49e49110d36ee93-a891c576beec38c5798e7413623891f4.ssl.cf3.rackcdn.com/4480.jpg"),
    AdviserProfile("Random", "Guy", "Real estate agency", "UAE", "Dubai", 4.3,
        "https://09feb49e49110d36ee93-a891c576beec38c5798e7413623891f4.ssl.cf3.rackcdn.com/4478.jpg"),
  ];

  final services = [

  ]

  @override
  @override
  Widget build(BuildContext context) {
    var style = TextStyle(
      fontSize: 20.0,
    );

    return Scaffold(
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.only(top: 64.0, bottom: 22.0, left: 20.0, right: 20.0),
                child: Center(
                    child: Text(
                  "Rental advisors in Dubai",
                  textAlign: TextAlign.center,
                  style: style,
                )),
              ),
              Center(
                child: RadioButton(true, "Filters", _filterClickListener),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Text("Your Top match advisors"),
              ),
              Flexible(
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: advisers.length,
                    itemBuilder: (BuildContext context, int index) =>
                        AdviserProfileCard(advisers[index])),
              ),
              Container(
                height: 20.0,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
              ),
              Flexible(
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: advisers.length,
                    itemBuilder: (BuildContext context, int index) =>
                        AdviserProfileCard(advisers[index])),
              ),
            ]),
      ),
    );
  }

  void _filterClickListener() {}
}
