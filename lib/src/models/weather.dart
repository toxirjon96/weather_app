import 'package:weather_app/weather_app_library.dart';

class Weather {
  int? queryCost;
  double? latitude;
  double? longitude;
  String? resolvedaddress;
  String? address;
  String? timezone;
  double? tzoffset;
  String? description;
  List<Days> days;

  Weather({
    required this.queryCost,
    required this.latitude,
    required this.longitude,
    required this.resolvedaddress,
    required this.address,
    required this.timezone,
    required this.tzoffset,
    required this.description,
    required this.days,
  });


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Weather &&
          runtimeType == other.runtimeType &&
          queryCost == other.queryCost &&
          latitude == other.latitude &&
          longitude == other.longitude &&
          resolvedaddress == other.resolvedaddress &&
          address == other.address &&
          timezone == other.timezone &&
          tzoffset == other.tzoffset &&
          description == other.description &&
          days == other.days;

  @override
  int get hashCode =>
      queryCost.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      resolvedaddress.hashCode ^
      address.hashCode ^
      timezone.hashCode ^
      tzoffset.hashCode ^
      description.hashCode ^
      days.hashCode;

  @override
  String toString() {
    return 'Weather(queryCost: $queryCost, '
        'latitude: $latitude, '
        'longitude: $longitude, '
        'resolvedaddress: $resolvedaddress, '
        'address: $address, '
        'timezone: $timezone, '
        'tzoffset: $tzoffset, '
        'description: $description, '
        'days: $days)';
  }
}
