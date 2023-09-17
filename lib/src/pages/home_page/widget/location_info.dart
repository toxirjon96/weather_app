import 'package:intl/intl.dart';
import 'package:weather_app/weather_app_library.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({
    super.key,
    required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "${weather.resolvedAddress}",
          style: const TextStyle(
            color: Color(0xFF303345),
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          weather.dateTimeFormat(
            DateFormat('EEEE, d MMM'),
            weather.currentConditions.datetimeEpoch,
          ),
          style: const TextStyle(
            color: Color(0xFF9A938C),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
