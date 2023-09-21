import 'package:weather_app/weather_app_library.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MainController controller;

  @override
  void initState() {
    super.initState();
    controller = MainController(
      geoRepository: GeoRepository(),
      weatherRepository: WeatherRepository(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                Color(0xFFFF7E36),
                Color(0xFFFFFFFF),
              ],
            ),
          ),
          child: FutureBuilder(
            future: controller.getWeatherData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (controller.weather == null) {
                  // showDialog(
                  //   context: context,
                  //   builder: (ctx) => AlertDialog(
                  //     title: const Text("Exception"),
                  //     content: Text(controller.errorMessage),
                  //     actions: [
                  //       TextButton(
                  //         onPressed: () {},
                  //         child: const Text("Okay"),
                  //       ),
                  //     ],
                  //   ),
                  // );
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(controller.errorMessage),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.refresh),
                        ),
                      ],
                    ),
                  );
                } else {
                  return ExpandedHomeBody(weather: controller.weather!);
                }
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
