abstract class ApiConstants {
  static String weatherPath(String city) =>
      '/VisualCrossingWebServices/rest/services/timeline/$city';

  static Map<String, String> weatherParams(
    String apiKey,
    String uGroup,
  ) =>
      {
        "unitGroup": uGroup,
        "key": apiKey,
        "contentType": "json",
      };
  static const geoPath = '/ipgeo';

  static Map<String, String> geoParams(String apiKey) => {
        "apiKey": apiKey,
      };
}
