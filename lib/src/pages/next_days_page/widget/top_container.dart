import 'package:weather_app/weather_app_library.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFFEE6CD),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Tomorrow",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "22 °",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Image.asset(
                      "assets/images/sunny.png",
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: ColumnItem(
                    image: Image.asset("assets/images/rain_fall.png"),
                    info: "1cm",
                  ),
                ),
                Expanded(
                  child: ColumnItem(
                    image: Image.asset("assets/images/wind.png"),
                    info: "15km/h",
                  ),
                ),
                Expanded(
                  child: ColumnItem(
                    image: Image.asset("assets/images/humidity.png"),
                    info: "50%",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColumnItem extends StatelessWidget {
  const ColumnItem({
    super.key,
    required this.image,
    required this.info,
  });

  final Image image;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(7),
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: image,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Text(
                info,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
