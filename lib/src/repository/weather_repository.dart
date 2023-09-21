import 'package:weather_app/weather_app_library.dart';

abstract interface class IWeatherRepository {
  abstract final WeatherServiceWrapper wrapper;

  Future<Weather> getWeatherData(String city);
}

class WeatherRepository implements IWeatherRepository {
  WeatherRepository() : wrapper = WeatherServiceWrapper(_dio);

  static final _dio = Dio(BaseOptions(
    baseUrl: ApiConfig.weatherBaseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    responseType: ResponseType.json,
  ));

  @override
  final WeatherServiceWrapper wrapper;

  @override
  Future<Weather> getWeatherData(String city) async {
    String response = await wrapper.request(
      ApiConstants.weatherPath(city),
      queryParameters: ApiConstants.weatherParams(
        ApiConfig.weatherKey,
        "us",
      ),
    );

    return Weather.fromJson(jsonDecode(response));
  }
}
