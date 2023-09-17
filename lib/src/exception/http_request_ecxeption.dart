class HttpRequestException implements Exception {
  final String _message;

  const HttpRequestException(String message) : _message = message;

  String get message => _message;
}
