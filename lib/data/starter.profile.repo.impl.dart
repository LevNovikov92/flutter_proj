import 'package:flutter_proj/domain/city.dart';
import 'package:flutter_proj/domain/repository/starter.profile.repo.dart';
import 'package:flutter_proj/domain/role.dart';
import 'package:flutter_proj/domain/service.type.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StarterProfileRepoImpl extends StarterProfileRepo {
  static const String CITY_ID = "CITY_ID";
  static const String CITY_NAME = "CITY_NAME";

  static const String ROLE = "ROLE";

  @override
  Future<City> getCity() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }

  @override
  Future<Role> getRole() {
    // TODO: implement getRole
  }

  @override
  Future<ServiceType> getServiceType() {
    // TODO: implement getServiceType
  }

  @override
  void saveCity(City city) {
    // TODO: implement saveCity
  }

  @override
  void saveRole(Role role) {
    // TODO: implement saveRole
  }

  @override
  void saveServiceType(ServiceType serviceType) {
    // TODO: implement saveServiceType
  }



}