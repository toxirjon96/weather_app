import 'package:weather_app/weather_app_library.dart';

class GeoModel {
  String? ip;
  String? continent_code;
  String? continent_name;
  String? country_code2;
  String? country_code3;
  String? country_name;
  String? country_capital;
  String? state_prov;
  String? state_code;
  String? district;
  String? city;
  String? zipcode;
  String? latitude;
  String? longitude;
  bool? is_eu;
  String? calling_code;
  String? country_tld;
  String? languages;
  String? country_flag;
  String? geoname_id;
  String? isp;
  String? connection_type;
  String? organization;
  Currency? currency;
  TimeZone? time_zone;

  GeoModel({
    required this.ip,
    required this.continent_code,
    required this.continent_name,
    required this.country_code2,
    required this.country_code3,
    required this.country_name,
    required this.country_capital,
    required this.state_prov,
    required this.state_code,
    required this.district,
    required this.city,
    required this.zipcode,
    required this.latitude,
    required this.longitude,
    required this.is_eu,
    required this.calling_code,
    required this.country_tld,
    required this.languages,
    required this.country_flag,
    required this.geoname_id,
    required this.isp,
    required this.connection_type,
    required this.organization,
    required this.currency,
    required this.time_zone,
  });

  factory GeoModel.fromJson(
    Map<String, Object?> json,
  ) =>
      GeoModel(
        ip: json["ip"] as String?,
        continent_code: json["continent_code"] as String?,
        continent_name: json["continent_name"] as String?,
        country_code2: json["country_code2"] as String?,
        country_code3: json["country_code3"] as String?,
        country_name: json["country_name"] as String?,
        country_capital: json["country_capital"] as String?,
        state_prov: json["state_prov"] as String?,
        state_code: json["state_code"] as String?,
        district: json["district"] as String?,
        city: json["city"] as String?,
        zipcode: json["zipcode"] as String?,
        latitude: json["latitude"] as String?,
        longitude: json["longitude"] as String?,
        is_eu: json["is_eu"] as bool?,
        calling_code: json["calling_code"] as String?,
        country_tld: json["country_tld"] as String?,
        languages: json["languages"] as String?,
        country_flag: json["country_flag"] as String?,
        geoname_id: json["geoname_id"] as String?,
        isp: json["isp"] as String?,
        connection_type: json["connection_type"] as String?,
        organization: json["organization"] as String?,
        currency: Currency.fromJson(json["currency"] as Map<String, Object?>),
        time_zone: TimeZone.fromJson(json["time_zone"] as Map<String, Object?>),
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeoModel &&
          runtimeType == other.runtimeType &&
          ip == other.ip &&
          continent_code == other.continent_code &&
          continent_name == other.continent_name &&
          country_code2 == other.country_code2 &&
          country_code3 == other.country_code3 &&
          country_name == other.country_name &&
          country_capital == other.country_capital &&
          state_prov == other.state_prov &&
          state_code == other.state_code &&
          district == other.district &&
          city == other.city &&
          zipcode == other.zipcode &&
          latitude == other.latitude &&
          longitude == other.longitude &&
          is_eu == other.is_eu &&
          calling_code == other.calling_code &&
          country_tld == other.country_tld &&
          languages == other.languages &&
          country_flag == other.country_flag &&
          geoname_id == other.geoname_id &&
          isp == other.isp &&
          connection_type == other.connection_type &&
          organization == other.organization &&
          currency == other.currency &&
          time_zone == other.time_zone;

  @override
  int get hashCode =>
      ip.hashCode ^
      continent_code.hashCode ^
      continent_name.hashCode ^
      country_code2.hashCode ^
      country_code3.hashCode ^
      country_name.hashCode ^
      country_capital.hashCode ^
      state_prov.hashCode ^
      state_code.hashCode ^
      district.hashCode ^
      city.hashCode ^
      zipcode.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      is_eu.hashCode ^
      calling_code.hashCode ^
      country_tld.hashCode ^
      languages.hashCode ^
      country_flag.hashCode ^
      geoname_id.hashCode ^
      isp.hashCode ^
      connection_type.hashCode ^
      organization.hashCode ^
      currency.hashCode ^
      time_zone.hashCode;

  @override
  String toString() {
    return 'GeoModel(ip: $ip, '
        'continent_code: $continent_code, '
        'continent_name: $continent_name, '
        'country_code2: $country_code2, '
        'country_code3: $country_code3, '
        'country_name: $country_name, '
        'country_capital: $country_capital, '
        'state_prov: $state_prov, '
        'state_code: $state_code, '
        'district: $district, '
        'city: $city, '
        'zipcode: $zipcode, '
        'latitude: $latitude, '
        'longitude: $longitude, '
        'is_eu: $is_eu, '
        'calling_code: $calling_code, '
        'country_tld: $country_tld, '
        'languages: $languages, '
        'country_flag: $country_flag, '
        'geoname_id: $geoname_id, '
        'isp: $isp, '
        'connection_type: $connection_type, '
        'organization: $organization, '
        'currency: $currency, '
        'time_zone: $time_zone)';
  }
}
