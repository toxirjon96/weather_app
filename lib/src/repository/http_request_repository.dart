import 'dart:convert';

abstract interface class HttpRequestRepository {
  Future<Map<String, Object?>> post(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  });

  Future<Map<String, Object?>> get(
    Uri url, {
    Map<String, String>? headers,
  });

  Future<Map<String, Object?>> put(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  });

  Future<Map<String, Object?>> patch(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  });

  Future<Map<String, Object?>> delete(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  });

  Map<String, Object?> jsonToMap(String requestBody);
}
