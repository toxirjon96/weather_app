import 'package:weather_app/weather_app_library.dart';

enum Method {
  get,
  post,
  put,
  patch,
  delete,
}

abstract interface class IServiceWrapper {
  abstract Dio _dio;
  abstract ApiService _apiService;

  Future<String> request(
    String path, {
    Method method = Method.get,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
  });
}

class WeatherServiceWrapper implements IServiceWrapper {
  WeatherServiceWrapper(this._dio) : _apiService = ApiService(_dio);

  @override
  late ApiService _apiService;

  @override
  late Dio _dio;

  @override
  Future<String> request(
    String path, {
    Method method = Method.get,
    Object? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
  }) {
    return _apiService.request(
      path,
      headers: headers,
      method: method,
      queryParameters: queryParameters,
      body: body,
    );
  }
}
class GeoServiceWrapper implements IServiceWrapper {
  GeoServiceWrapper(this._dio) : _apiService = ApiService(_dio);

  @override
  late ApiService _apiService;

  @override
  late Dio _dio;

  @override
  Future<String> request(
      String path, {
        Method method = Method.get,
        Object? body,
        Map<String, String>? headers,
        Map<String, String>? queryParameters,
      }) {
    return _apiService.request(
      path,
      headers: headers,
      method: method,
      queryParameters: queryParameters,
      body: body,
    );
  }
}