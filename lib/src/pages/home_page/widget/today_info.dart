import 'package:weather_app/weather_app_library.dart';

class TodayInfo extends StatelessWidget {
  const TodayInfo({
    super.key,
    required this.image,
    required this.celsiusValue,
    required this.weather,
  });

  final Image image;
  final String celsiusValue;
  final String weather;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        image,
        Row(
          children: [
            Column(
              children: [
                Text(
                  celsiusValue,
                  style: const TextStyle(
                    color: Color(0xFF303345),
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  weather,
                  style: const TextStyle(
                    color: Color(0xFF303345),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            const Column(
              children: [
                Text(
                  "° C",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
