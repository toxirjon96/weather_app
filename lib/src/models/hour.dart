class Hour {
  String? datetime;
  int? datetimeEpoch;
  double? temp;
  double? feelslike;
  double? humidity;
  double? dew;
  double? precip;
  double? precipprob;
  int? snow;
  int? snowdepth;
  List<String>? preciptype;
  double? windgust;
  double? windspeed;
  double? winddir;
  double? pressure;
  double? visibility;
  double? cloudcover;
  double? solarradiation;
  double? solarenergy;
  int? uvindex;
  int? severerisk;
  String? conditions;
  String? icon;
  List<String>? stations;
  String? source;

  Hour({
    required this.datetime,
    required this.datetimeEpoch,
    required this.temp,
    required this.feelslike,
    required this.humidity,
    required this.dew,
    required this.precip,
    required this.precipprob,
    required this.snow,
    required this.snowdepth,
    required this.preciptype,
    required this.windgust,
    required this.windspeed,
    required this.winddir,
    required this.pressure,
    required this.visibility,
    required this.cloudcover,
    required this.solarradiation,
    required this.solarenergy,
    required this.uvindex,
    required this.severerisk,
    required this.conditions,
    required this.icon,
    required this.stations,
    required this.source,
  });


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Hour &&
          runtimeType == other.runtimeType &&
          datetime == other.datetime &&
          datetimeEpoch == other.datetimeEpoch &&
          temp == other.temp &&
          feelslike == other.feelslike &&
          humidity == other.humidity &&
          dew == other.dew &&
          precip == other.precip &&
          precipprob == other.precipprob &&
          snow == other.snow &&
          snowdepth == other.snowdepth &&
          preciptype == other.preciptype &&
          windgust == other.windgust &&
          windspeed == other.windspeed &&
          winddir == other.winddir &&
          pressure == other.pressure &&
          visibility == other.visibility &&
          cloudcover == other.cloudcover &&
          solarradiation == other.solarradiation &&
          solarenergy == other.solarenergy &&
          uvindex == other.uvindex &&
          severerisk == other.severerisk &&
          conditions == other.conditions &&
          icon == other.icon &&
          stations == other.stations &&
          source == other.source;

  @override
  int get hashCode =>
      datetime.hashCode ^
      datetimeEpoch.hashCode ^
      temp.hashCode ^
      feelslike.hashCode ^
      humidity.hashCode ^
      dew.hashCode ^
      precip.hashCode ^
      precipprob.hashCode ^
      snow.hashCode ^
      snowdepth.hashCode ^
      preciptype.hashCode ^
      windgust.hashCode ^
      windspeed.hashCode ^
      winddir.hashCode ^
      pressure.hashCode ^
      visibility.hashCode ^
      cloudcover.hashCode ^
      solarradiation.hashCode ^
      solarenergy.hashCode ^
      uvindex.hashCode ^
      severerisk.hashCode ^
      conditions.hashCode ^
      icon.hashCode ^
      stations.hashCode ^
      source.hashCode;

  @override
  String toString() {
    return 'Hour(datetime: $datetime, '
        'datetimeEpoch: $datetimeEpoch, '
        'temp: $temp, '
        'feelslike: $feelslike, '
        'humidity: $humidity, '
        'dew: $dew, '
        'precip: $precip, '
        'precipprob: $precipprob, '
        'snow: $snow, '
        'snowdepth: $snowdepth, '
        'preciptype: $preciptype, '
        'windgust: $windgust, '
        'windspeed: $windspeed, '
        'winddir: $winddir, '
        'pressure: $pressure, '
        'visibility: $visibility, '
        'cloudcover: $cloudcover, '
        'solarradiation: $solarradiation, '
        'solarenergy: $solarenergy, '
        'uvindex: $uvindex, '
        'severerisk: $severerisk, '
        'conditions: $conditions, '
        'icon: $icon, '
        'stations: $stations, '
        'source: $source)';
  }
}
