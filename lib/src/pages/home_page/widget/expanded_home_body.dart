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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Toshkent, Uzbekistan",
                style: TextStyle(
                  color: Color(0xFF303345),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Tue, Sept 15",
                style: TextStyle(
                  color: Color(0xFF9A938C),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/rainy/rainy_4.png",
                height: 400,
              ),
              const Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "19",
                        style: TextStyle(
                          color: Color(0xFF303345),
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Rainy",
                        style: TextStyle(
                          color: Color(0xFF303345),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text("° C"),
                    ],
                  ),
                ],
              ),
            ],
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
