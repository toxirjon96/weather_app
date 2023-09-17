import 'package:weather_app/weather_app_library.dart';

class Days {
  String? datetime;
  int? datetimeepoch;
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
  double? preciptype;
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
  double? sunrise;
  double? sunset;
  double? sunriseEpoch;
  double? moonphase;
  String? conditions;
  String? description;
  String? icon;
  List<String> stations;
  String? source;
  List<Hour>? hours;

  Days({
    required this.datetime,
    required this.datetimeepoch,
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


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Days &&
          runtimeType == other.runtimeType &&
          datetime == other.datetime &&
          datetimeepoch == other.datetimeepoch &&
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
      datetimeepoch.hashCode ^
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
        'datetimeepoch: $datetimeepoch, '
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
