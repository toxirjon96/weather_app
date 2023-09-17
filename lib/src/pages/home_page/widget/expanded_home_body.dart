import 'package:weather_app/weather_app_library.dart';

class ExpandedHomeBody extends StatelessWidget {
  final Weather weather;

  const ExpandedHomeBody({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: HomeAppBar(),
        ),
        Expanded(
          flex: 3,
          child: LocationInfo(
            weather: weather,
          ),
        ),
        Expanded(
          flex: 4,
          child: TodayInfo(
            image: Image.asset(
              "assets/images/rainy_with_sun.png",
              height: 400,
            ),
            celsiusValue: weather.celsiusValue(weather.currentConditions.temp!),
            weather: weather.currentConditions.conditions!,
          ),
        ),
        Expanded(
          flex: 6,
          child: WeatherInfo(
            weather: weather,
          ),
        ),
        Expanded(
          child: WeatherDays(
            weather: weather,
          ),
        ),
        Divider(
          color: Colors.black.withOpacity(0.5),
        ),
        Expanded(
          flex: 3,
          child: WeatherSlider(
            weather: weather,
          ),
        ),
      ],
    );
  }
}
