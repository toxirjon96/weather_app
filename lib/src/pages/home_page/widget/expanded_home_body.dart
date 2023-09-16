import 'package:weather_app/src/pages/home_page/widget/home_appbar.dart';
import 'package:weather_app/weather_app_library.dart';

class ExpandedHomeBody extends StatelessWidget {
  const ExpandedHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: HomeAppBar(),
        ),
        const Expanded(
          flex: 3,
          child: LocationInfo(),
        ),
        Expanded(
          flex: 4,
          child: TodayInfo(
            image: Image.asset(
              "assets/images/rainy/rainy_4.png",
              height: 400,
            ),
            celsiusValue: "19",
            weather: "Rainy",
          ),
        ),
        const Expanded(
          flex: 6,
          child: WeatherInfo(),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
