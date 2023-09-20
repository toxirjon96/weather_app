import 'package:weather_app/weather_app_library.dart';

class ApiService {
  static final ApiService _apiService = ApiService._internal();

  late final Dio _geoDio;
  late final Dio _weatherDio;

  factory ApiService() {
    return _apiService;
  }

  ApiService._internal() {
    final weatherOptions = BaseOptions(
      baseUrl: ApiConfig.weatherBaseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    );
    _weatherDio = Dio(weatherOptions);

    final geoOptions = BaseOptions(
      baseUrl: ApiConfig.geoBaseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    );
    _geoDio = Dio(geoOptions);
  }


}
