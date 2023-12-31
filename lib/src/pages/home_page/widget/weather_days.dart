import 'package:weather_app/weather_app_library.dart';

class WeatherDays extends StatefulWidget {
  const WeatherDays({
    super.key,
    required this.weather,
  });

  final Weather weather;

  @override
  State<StatefulWidget> createState() => _WeatherDaysState();
}

class _WeatherDaysState extends State<WeatherDays> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "Today",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Tomorrow",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.2),
              fontSize: 16,
            ),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NextDaysPage(
                  weather: widget.weather,
                ),
              ),
            );
          },
          child: Text(
            "Next 7 Days",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.2),
              fontSize: 16,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: Colors.black.withOpacity(0.2),
          ),
        ),
      ],
    );
  }
}
