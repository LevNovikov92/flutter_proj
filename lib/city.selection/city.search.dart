import 'package:flutter/material.dart';
import 'package:flutter_proj/domain/city.dart';
import 'package:flutter_proj/advisor.selection/advisor.search.screen.dart';

class CitySearchWidget extends StatefulWidget {
  @override
  CitySearchState createState() => CitySearchState();
}

class CitySearchState extends State<CitySearchWidget> implements CitySelectionListener {
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
                      CityEntry(
                        suggestions[index],
                        this
                      ),
                  itemCount: suggestions.length,
                ))
          ],
        ));
  }

  @override
  void onCitySelected(City city) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdviserSearchScreen()));
  }
}

class CityEntry extends StatelessWidget {
  final City city;
  final CitySelectionListener listener;

  CityEntry(this.city, this.listener);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Text(city.name),
    );
  }

  void _onTap() {
    listener.onCitySelected(city);
  }
}

abstract class CitySelectionListener {
  void onCitySelected(City city);
}
