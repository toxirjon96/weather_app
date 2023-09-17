import 'package:http/http.dart' as http;
import 'package:weather_app/weather_app_library.dart';

class HttpRequestService implements HttpRequestRepository {
  @override
  Future<Map<String, Object?>> get(
    Uri url, {
    Map<String, String>? headers,
  }) async {
    http.Response response = await http.get(url, headers: headers);
    try {
      if (response.statusCode == 200) {
        return jsonToMap(response.body);
      } else {
        throw HttpStatusCodeException(
            "Request returns ${response.statusCode}.");
      }
    } on JsonDecodeException {
      rethrow;
    }
  }

  @override
  Future<Map<String, Object?>> delete(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Map<String, Object?>> patch(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future<Map<String, Object?>> post(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<Map<String, Object?>> put(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    // TODO: implement put
    throw UnimplementedError();
  }

  @override
  Map<String, Object?> jsonToMap(String requestBody) {
    try {
      return jsonDecode(requestBody);
    } catch (e) {
      throw const JsonDecodeException("This is not valid format of json.");
    }
  }
}
