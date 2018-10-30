import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/custom.button.dart';
import 'package:flutter_proj/domain/city.dart';

class CitySearchWidget extends StatefulWidget {
  @override
  CitySearchState createState() => CitySearchState();
}

class CitySearchState extends State<CitySearchWidget> {
  List<City> citiesList = [];
  List<City> suggestions = [];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  void _loadCities() async {
    setState(() {
      citiesList = [City(0, 'Berlin'), City(1, 'London'), City(2, 'Dubai')];
    });
  }

  void _onTextChanged(String text) {
    List<City> list = [];
    if (text.length > 2) {
      list = citiesList
          .where(
              (city) => city.name.toLowerCase().startsWith(text.toLowerCase()))
          .toList();
    }
    setState(() {
      suggestions = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          onChanged: _onTextChanged,
          decoration: new InputDecoration(
            hintText: 'Type something',
          ),
        ),
        Flexible(
            child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) =>
              CityEntry(suggestions[index]),
          itemCount: suggestions.length,
        ))
      ],
    ));
  }
}

class CityEntry extends StatelessWidget {
  final City city;

  CityEntry(this.city);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(city.name),
    );
  }
}
