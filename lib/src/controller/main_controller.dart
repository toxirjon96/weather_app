import 'package:weather_app/weather_app_library.dart';

class MainController {
  MainController({
    required IGeoRepository geoRepository,
    required IWeatherRepository weatherRepository,
  })  : _geoRepository = geoRepository,
        _weatherRepository = weatherRepository;

  final IGeoRepository _geoRepository;
  final IWeatherRepository _weatherRepository;

  Weather? weather;
  GeoModel? geoModel;
  String? _errorMessage;

  String get errorMessage => _errorMessage!;

  bool get isProgress => weather == null && geoModel == null;

  Future<void> getWeatherData() async {
    try {
      geoModel = await _geoRepository.getGeoData();
      weather = await _weatherRepository.getWeatherData(geoModel?.city ?? "");
    } on UnknownException catch (error, stackTrace) {
      _errorMessage = "There something wrong!";
    } on ClientException catch (error, stackTrace) {
      _errorMessage = "Check your internet connection!";
    } on ServerException catch (error, stackTrace) {
      _errorMessage = "Internal server error";
    } on Object catch (error, stackTrace) {
      _errorMessage = "There something wrong!";
    }
  }
}
