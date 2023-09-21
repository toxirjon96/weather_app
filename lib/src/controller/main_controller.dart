import 'package:weather_app/weather_app_library.dart';

class MainController {
  MainController({
    required this.geoRepository,
    required this.weatherRepository,
  });

  final IGeoRepository geoRepository;
  final IWeatherRepository weatherRepository;

  Weather? weather;
  GeoModel? geoModel;

  bool get isProgress => weather == null && geoModel == null;

  Future<void> getWeatherData() async {
    try {
      geoModel = await geoRepository.getGeoData();
      weather = await weatherRepository.getWeatherData(geoModel?.city ?? "");

      print(weather);
    } on UnknownException catch (error, stackTrace) {

      print(error);
      print(stackTrace);
    } on ClientException catch (error, stackTrace) {

      print(error);
      print(stackTrace);
    } on ServerException catch (error, stackTrace) {

      print(error);
      print(stackTrace);
    } on Object catch (error, stackTrace) {

      print(error);
      print(stackTrace);
    }
  }
}