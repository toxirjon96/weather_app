import 'package:weather_app/weather_app_library.dart';

class Day {
  String? datetime;
  int? datetimeEpoch;
  double? tempmax;
  double? tempmin;
  double? temp;
  double? feelslikemax;
  double? feelslikemin;
  double? feelslike;
  double? dew;
  double? humidity;
  double? precip;
  double? precipprob;
  double? precipcover;
  List<String>? preciptype;
  double? snow;
  double? snowdepth;
  double? windgust;
  double? windspeed;
  double? winddir;
  double? pressure;
  double? cloudcover;
  double? visibility;
  double? solarradiation;
  double? solarenergy;
  double? uvindex;
  double? severerisk;
  String? sunrise;
  String? sunset;
  int? sunriseEpoch;
  double? moonphase;
  String? conditions;
  String? description;
  String? icon;
  List<String>? stations;
  String? source;
  List<Hour> hours;

  Day({
    required this.datetime,
    required this.datetimeEpoch,
    required this.tempmax,
    required this.tempmin,
    required this.temp,
    required this.feelslikemax,
    required this.feelslikemin,
    required this.feelslike,
    required this.dew,
    required this.humidity,
    required this.precip,
    required this.precipprob,
    required this.precipcover,
    required this.preciptype,
    required this.snow,
    required this.snowdepth,
    required this.windgust,
    required this.windspeed,
    required this.winddir,
    required this.pressure,
    required this.cloudcover,
    required this.visibility,
    required this.solarradiation,
    required this.solarenergy,
    required this.uvindex,
    required this.severerisk,
    required this.sunrise,
    required this.sunset,
    required this.sunriseEpoch,
    required this.moonphase,
    required this.conditions,
    required this.description,
    required this.icon,
    required this.stations,
    required this.source,
    required this.hours,
  });

  static Day Function(Map<String, Object?> json) convert() =>
      (Map<String, Object?> json) {
        return Day.fromJson(json);
      };

  factory Day.fromJson(Map<String, Object?> json) {
    return Day(
      datetime: json["datetime"] as String?,
      datetimeEpoch: json["datetimeEpoch"] as int?,
      tempmax: json["tempmax"] as double?,
      tempmin: json["tempmin"] as double?,
      temp: json["temp"] as double?,
      feelslikemax: json["feelslikemax"] as double?,
      feelslikemin: json["feelslikemin"] as double?,
      feelslike: json["feelslike"] as double?,
      dew: json["dew"] as double?,
      humidity: json["humidity"] as double?,
      precip: json["precip"] as double?,
      precipprob: json["precipprob"] as double?,
      precipcover: json["precipcover"] as double?,
      preciptype: json["preciptype"] == null
          ? null
          : (json["preciptype"] as List<Object?>)
              .map((e) => e as String)
              .toList(),
      snow: json["snow"] as double?,
      snowdepth: json["snowdepth"] as double?,
      windgust: json["windgust"] as double?,
      windspeed: json["windspeed"] as double?,
      winddir: json["winddir"] as double?,
      pressure: json["pressure"] as double?,
      cloudcover: json["cloudcover"] as double?,
      visibility: json["visibility"] as double?,
      solarradiation: json["solarradiation"] as double?,
      solarenergy: json["solarenergy"] as double?,
      uvindex: json["uvindex"] as double?,
      severerisk: json["severerisk"] as double?,
      sunrise: json["sunrise"] as String?,
      sunset: json["sunset"] as String?,
      sunriseEpoch: json["sunriseEpoch"] as int?,
      moonphase: json["moonphase"] as double?,
      conditions: json["conditions"] as String?,
      description: json["description"] as String?,
      icon: json["icon"] as String?,
      stations: json["stations"] == null
          ? null
          : (json["stations"] as List<Object?>)
              .map((e) => e as String)
              .toList(),
      source: json["source"] as String?,
      hours: (json["hours"] as List<Object?>).map((e) {
        if (e is Map<String, Object?>) {
          return Hour.convert()(e);
        } else {
          throw const HttpRequestException("Request exception.");
        }
      }).toList(),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Day &&
          runtimeType == other.runtimeType &&
          datetime == other.datetime &&
          datetimeEpoch == other.datetimeEpoch &&
          tempmax == other.tempmax &&
          tempmin == other.tempmin &&
          temp == other.temp &&
          feelslikemax == other.feelslikemax &&
          feelslikemin == other.feelslikemin &&
          feelslike == other.feelslike &&
          dew == other.dew &&
          humidity == other.humidity &&
          precip == other.precip &&
          precipprob == other.precipprob &&
          precipcover == other.precipcover &&
          preciptype == other.preciptype &&
          snow == other.snow &&
          snowdepth == other.snowdepth &&
          windgust == other.windgust &&
          windspeed == other.windspeed &&
          winddir == other.winddir &&
          pressure == other.pressure &&
          cloudcover == other.cloudcover &&
          visibility == other.visibility &&
          solarradiation == other.solarradiation &&
          solarenergy == other.solarenergy &&
          uvindex == other.uvindex &&
          severerisk == other.severerisk &&
          sunrise == other.sunrise &&
          sunset == other.sunset &&
          sunriseEpoch == other.sunriseEpoch &&
          moonphase == other.moonphase &&
          conditions == other.conditions &&
          description == other.description &&
          icon == other.icon &&
          stations == other.stations &&
          source == other.source &&
          hours == other.hours;

  @override
  int get hashCode =>
      datetime.hashCode ^
      datetimeEpoch.hashCode ^
      tempmax.hashCode ^
      tempmin.hashCode ^
      temp.hashCode ^
      feelslikemax.hashCode ^
      feelslikemin.hashCode ^
      feelslike.hashCode ^
      dew.hashCode ^
      humidity.hashCode ^
      precip.hashCode ^
      precipprob.hashCode ^
      precipcover.hashCode ^
      preciptype.hashCode ^
      snow.hashCode ^
      snowdepth.hashCode ^
      windgust.hashCode ^
      windspeed.hashCode ^
      winddir.hashCode ^
      pressure.hashCode ^
      cloudcover.hashCode ^
      visibility.hashCode ^
      solarradiation.hashCode ^
      solarenergy.hashCode ^
      uvindex.hashCode ^
      severerisk.hashCode ^
      sunrise.hashCode ^
      sunset.hashCode ^
      sunriseEpoch.hashCode ^
      moonphase.hashCode ^
      conditions.hashCode ^
      description.hashCode ^
      icon.hashCode ^
      stations.hashCode ^
      source.hashCode ^
      hours.hashCode;

  @override
  String toString() {
    return 'Days(datetime: $datetime, '
        'datetimeepoch: $datetimeEpoch, '
        'tempmax: $tempmax, '
        'tempmin: $tempmin, '
        'temp: $temp, '
        'feelslikemax: $feelslikemax, '
        'feelslikemin: $feelslikemin, '
        'feelslike: $feelslike, '
        'dew: $dew, '
        'humidity: $humidity, '
        'precip: $precip, '
        'precipprob: $precipprob, '
        'precipcover: $precipcover, '
        'preciptype: $preciptype, '
        'snow: $snow, '
        'snowdepth: $snowdepth, '
        'windgust: $windgust, '
        'windspeed: $windspeed, '
        'winddir: $winddir, '
        'pressure: $pressure, '
        'cloudcover: $cloudcover, '
        'visibility: $visibility, '
        'solarradiation: $solarradiation, '
        'solarenergy: $solarenergy, '
        'uvindex: $uvindex, '
        'severerisk: $severerisk, '
        'sunrise: $sunrise, '
        'sunset: $sunset, '
        'sunriseEpoch: $sunriseEpoch, '
        'moonphase: $moonphase, '
        'conditions: $conditions, '
        'description: $description, '
        'icon: $icon, '
        'stations: $stations, '
        'source: $source, '
        'hours: $hours)';
  }
}
