import 'package:intl/intl.dart';
import 'package:weather_app/weather_app_library.dart';

class Weather {
  int? queryCost;
  double? latitude;
  double? longitude;
  String? resolvedAddress;
  String? address;
  String? timezone;
  double? tzoffset;
  String? description;
  List<Day> days;
  CurrentConditions currentConditions;

  Weather({
    required this.queryCost,
    required this.latitude,
    required this.longitude,
    required this.resolvedAddress,
    required this.address,
    required this.timezone,
    required this.tzoffset,
    required this.description,
    required this.days,
    required this.currentConditions,
  });

  String celsiusValue(double temp) {
    return ((temp - 32) * 5 / 9).truncate().toString();
  }

  String dateTimeFormat(DateFormat format, dateTimeEpoch) {
    return format.format(
      DateTime.fromMillisecondsSinceEpoch(dateTimeEpoch * 1000),
    );
  }

  static Weather Function(Map<String, Object?> json) convert() =>
      (Map<String, Object?> json) {
        return Weather.fromJson(json);
      };

  factory Weather.fromJson(Map<String, Object?> json) {
    return Weather(
      queryCost: json["queryCost"] as int?,
      latitude: json["latitude"] as double?,
      longitude: json["longitude"] as double?,
      resolvedAddress: json["resolvedAddress"] as String?,
      address: json["address"] as String?,
      timezone: json["timezone"] as String?,
      tzoffset: json["tzoffset"] as double?,
      description: json["description"] as String?,
      days: (json["days"] as List<Object?>).map((e) {
        if (e is Map<String, Object?>) {
          return Day.convert()(e);
        } else {
          throw const HttpRequestException("Request exception.");
        }
      }).toList(),
      currentConditions: CurrentConditions.fromJson(
        json["currentConditions"] as Map<String, Object?>,
      ),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Weather &&
          runtimeType == other.runtimeType &&
          queryCost == other.queryCost &&
          latitude == other.latitude &&
          longitude == other.longitude &&
          resolvedAddress == other.resolvedAddress &&
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
      resolvedAddress.hashCode ^
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
        'resolvedaddress: $resolvedAddress, '
        'address: $address, '
        'timezone: $timezone, '
        'tzoffset: $tzoffset, '
        'description: $description, '
        'days: $days)';
  }
}
