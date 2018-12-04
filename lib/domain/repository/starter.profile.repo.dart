import 'package:flutter_proj/domain/city.dart';
import 'package:flutter_proj/domain/role.dart';
import 'package:flutter_proj/domain/service.type.dart';

abstract class StarterProfileRepo {
  void saveRole(Role role);
  Role getRole();

  void saveCity(City city);
  City getCity();

  void saveServiceType(ServiceType serviceType);
  ServiceType getServiceType();
}