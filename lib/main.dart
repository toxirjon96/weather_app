import 'package:weather_app/weather_app_library.dart';

void main() async {
  WeatherAppController<Weather> weatherAppController = WeatherAppController(
    convert: Weather.convert(),
    requestRepository: HttpRequestService(),
  );
  try{
    Weather w = await weatherAppController.get(
        "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/Toshkent?unitGroup=us&key=HX4CGDZRV4UEJURH9Z2ZQ4FUJ&contentType=json"
    );
  }catch(e, st){
    print(st);
  }


  runApp(
    MaterialApp(
      title: "Weather App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Inter"),
      home: const HomePage(),
    ),
  );
}
