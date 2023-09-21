import 'package:weather_app/weather_app_library.dart';

abstract interface class IGeoRepository {
  abstract final GeoServiceWrapper wrapper;

  Future<GeoModel> getGeoData();
}

class GeoRepository implements IGeoRepository {
  GeoRepository() : wrapper = GeoServiceWrapper(_dio);

  static final _dio = Dio(BaseOptions(
    baseUrl: ApiConfig.geoBaseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    responseType: ResponseType.json,
  ));

  @override
  final GeoServiceWrapper wrapper;

  @override
  Future<GeoModel> getGeoData() async {
    String response = await wrapper.request(
      ApiConstants.geoPath,
      queryParameters: ApiConstants.geoParams(ApiConfig.geoApiKey),
    );

    return GeoModel.fromJson(jsonDecode(response));
  }
}
