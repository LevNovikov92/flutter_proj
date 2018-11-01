import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/radio.button.dart';
import 'package:flutter_proj/advisor.selection/adviser.profile.card.dart';
import 'package:flutter_proj/domain/adviser.profile.dart';
import 'package:flutter_proj/domain/service.dart';
import 'package:flutter_proj/adviser.profile/adviser.profile.screen.dart';

class AdviserSearchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AdviserSearchState();
}

class AdviserSearchState extends State<AdviserSearchScreen>  implements ProfileClickListener {
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
    Service(
        "http://img.matrimonydirectory.com/sites/wp-content/blogs.dir/4223/files/gallery/mobel-furniture-13.jpg"),
    Service(
        "http://img.matrimonydirectory.com/sites/wp-content/blogs.dir/4223/files/gallery/mobel-furniture-13.jpg"),
    Service(
        "http://img.matrimonydirectory.com/sites/wp-content/blogs.dir/4223/files/gallery/mobel-furniture-13.jpg"),
    Service(
        "http://img.matrimonydirectory.com/sites/wp-content/blogs.dir/4223/files/gallery/mobel-furniture-13.jpg"),
    Service(
        "http://img.matrimonydirectory.com/sites/wp-content/blogs.dir/4223/files/gallery/mobel-furniture-13.jpg"),
    Service(
        "http://img.matrimonydirectory.com/sites/wp-content/blogs.dir/4223/files/gallery/mobel-furniture-13.jpg"),
    Service(
        "http://img.matrimonydirectory.com/sites/wp-content/blogs.dir/4223/files/gallery/mobel-furniture-13.jpg"),
  ];

  @override
  @override
  Widget build(BuildContext context) {
    var style = TextStyle(
      fontSize: 20.0,
    );

    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(
                top: 64.0, bottom: 22.0, left: 20.0, right: 20.0),
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
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Text("Your Top match advisors"),
          ),
          Flexible(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: advisers.length,
                itemBuilder: (BuildContext context, int index) =>
                    AdviserProfileCard(advisers[index], this)),
          ),
          Container(
            height: 20.0,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          Container(
            height: 125.0,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: services.length,
                itemBuilder: (BuildContext context, int index) =>
                    ServiceImage(services[index].imgUrl)),
          ),
        ]),
      ),
    );
  }

  void _filterClickListener() {}

  @override
  void onProfileClick(AdviserProfile profile) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AdviserProfileScreen(profile)));
  }
}

abstract class ProfileClickListener {
  void onProfileClick(AdviserProfile profile);
}

class ServiceImage extends StatelessWidget {
  final String _imgUrl;

  ServiceImage(this._imgUrl);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Image.network(
          _imgUrl,
          height: 90.0,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
