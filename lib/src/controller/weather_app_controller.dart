import 'package:weather_app/weather_app_library.dart';

class WeatherAppController<T> {
  final T Function(Map<String, Object?> json) convert;
  final HttpRequestRepository requestRepository;

  WeatherAppController({
    required this.convert,
    required this.requestRepository,
  });

  Future<T> get(
    String getUrl, {
    Map<String, String>? headers,
        Map<String, String>? queryParameters,
  }) async {
    try {
      Uri url = Uri.parse(getUrl);
      Map<String, Object?> json = await requestRepository.get(
        url,
        headers: headers,
      );
      return convert(json);
    } on JsonDecodeException {
      rethrow;
    } on HttpStatusCodeException {
      rethrow;
    } on HttpRequestException {
      rethrow;
    } catch (e) {
      throw const HttpUrlException("This is not valid url.");
    }
  }

}
