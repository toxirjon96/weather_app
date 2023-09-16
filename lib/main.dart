import 'package:weather_app/weather_app_library.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Weather App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Inter"),
      home: const HomePage(),
    ),
  );
}
