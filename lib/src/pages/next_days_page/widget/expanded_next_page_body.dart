import 'package:intl/intl.dart';
import 'package:weather_app/weather_app_library.dart';

class ExpandedNextPageBody extends StatelessWidget {
  const ExpandedNextPageBody({
    super.key,
    required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: NextPageAppBar(),
        ),
        Expanded(
          flex: 10,
          child: Column(
            children: [
              Expanded(
                child: TopContainer(
                  weather: weather,
                ),
              ),
              Expanded(
                flex: 2,
                child: ListView(
                  children: [
                    ...weather.days.getRange(2, 8).map(
                          (e) => ContainerItem(
                            dayName: weather.dateTimeFormat(
                                DateFormat('EEEE'), e.datetimeEpoch),
                            celsius: "${weather.celsiusValue(e.temp!)} °",
                            image: Image.asset(
                              "assets/images/sunny.png",
                              fit: BoxFit.cover,
                              width: 90,
                            ),
                          ),
                        ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
