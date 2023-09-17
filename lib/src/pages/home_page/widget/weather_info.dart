import 'package:weather_app/weather_app_library.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    super.key,
    required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InfoItem(
          image: Image.asset(
            "assets/images/rain_fall.png",
            width: 50,
          ),
          infoName: "Rain Fall",
          infoValue: "${weather.currentConditions.precipprob!.toInt()}cm",
        ),
        InfoItem(
          image: Image.asset(
            "assets/images/wind.png",
            width: 50,
          ),
          infoName: "Wind",
          infoValue: "${weather.currentConditions.windspeed}km/h",
        ),
        InfoItem(
          image: Image.asset(
            "assets/images/humidity.png",
            width: 50,
          ),
          infoName: "Humidity",
          infoValue: "${weather.currentConditions.humidity}%",
        )
      ],
    );
  }
}

class InfoItem extends StatelessWidget {
  const InfoItem({
    super.key,
    required this.image,
    required this.infoName,
    required this.infoValue,
  });

  final Image image;
  final String infoName;
  final String infoValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 30,
        top: 12,
        bottom: 12,
        left: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color(0xFFFBD2B0),
            Color(0xFFFCE7D3),
          ],
        ),
      ),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: image,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            infoName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Text(
            infoValue,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
