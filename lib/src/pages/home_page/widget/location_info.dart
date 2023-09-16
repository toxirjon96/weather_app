import 'package:weather_app/weather_app_library.dart';

class LocationInfo extends StatelessWidget{
  const LocationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    );
  }
}