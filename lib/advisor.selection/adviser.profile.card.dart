import 'package:flutter/material.dart';
import 'package:flutter_proj/domain/adviser.profile.dart';

class AdviserProfileCard extends StatelessWidget {
  final AdviserProfile adviserProfile;

  AdviserProfileCard(this.adviserProfile);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
            width: 1.0, color: Colors.grey),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.network(adviserProfile.imgUrl),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        adviserProfile.getFullName(),
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        adviserProfile.title,
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "${adviserProfile.country}, ${adviserProfile.city}",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
