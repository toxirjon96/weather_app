import 'package:intl/intl.dart';
import 'package:weather_app/weather_app_library.dart';

class WeatherSlider extends StatelessWidget {
  WeatherSlider({
    super.key,
    required this.weather,
  });

  final Weather weather;

  final controller = ScrollController();

  bool isEqualTime(int timeEpoch) {
    DateTime now = DateTime.now();
    DateTime value = DateTime.fromMillisecondsSinceEpoch(timeEpoch * 1000);
    return DateFormat.H().format(now).trim() ==
        DateFormat.H().format(value).trim();
  }

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      scrollbarOrientation: ScrollbarOrientation.top,
      controller: controller,
      thumbVisibility: true,
      thickness: 4,
      thumbColor: Colors.black,
      radius: const Radius.circular(10),
      child: SingleChildScrollView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...weather.days[0].hours.map(
              (e) {
                if (!isEqualTime(e.datetimeEpoch!)) {
                  return SliderItem(
                    time: weather.dateTimeFormat(
                        DateFormat.Hm(), e.datetimeEpoch),
                    celsius: weather.celsiusValue(e.temp!),
                    imageName: weather.imageName(e.icon!),
                  );
                } else {
                  return SliderItem(
                    time: "now",
                    celsius: weather.celsiusValue(e.temp!),
                    color: const Color(0xFFFFEAD9),
                    imageName: weather.imageName(e.icon!),
                  );
                }
              },
            ).toList(),
          ],
        ),
      ),
    );
  }
}

class SliderItem extends StatelessWidget {
  const SliderItem({
    super.key,
    required this.time,
    required this.celsius,
    required this.imageName,
    this.color = const Color(0xFFFECFA9),
  });

  final Color color;
  final String time;
  final String celsius;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 5,
        top: 10,
        right: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time),
          Image.asset(
            "assets/images/$imageName",
            width: 60,
            fit: BoxFit.cover,
          ),
          Text("$celsius °"),
        ],
      ),
    );
  }
}
