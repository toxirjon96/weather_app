import 'package:weather_app/weather_app_library.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Weather? weather;
  Widget? activeScreen;
  String stateOfApp = "Loading...";

  final WeatherAppController<Weather> weatherAppController =
      WeatherAppController(
    convert: Weather.convert(),
    requestRepository: HttpRequestService(),
  );

  @override
  void initState() {
    super.initState();
    makeRequest();
  }

  void makeRequest() async {
    try {
      Weather w = await weatherAppController.get(
          "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/Toshkent?unitGroup=us&key=HX4CGDZRV4UEJURH9Z2ZQ4FUJ&contentType=json");

      setState(() {
        weather = w;
      });
    } on JsonDecodeException catch (e) {
      setState(() {
        stateOfApp = e.message;
      });
    } on HttpUrlException catch (e) {
      setState(() {
        stateOfApp = e.message;
      });
    } on HttpRequestException catch (e) {
      setState(() {
        stateOfApp = e.message;
      });
    } on HttpStatusCodeException catch (e) {
      setState(() {
        stateOfApp = e.message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (weather != null) {
      activeScreen = const ExpandedHomeBody();
    } else {
      activeScreen = Loading(stateOfApp: stateOfApp);
    }
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
          child: activeScreen,
        ),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({
    super.key,
    required this.stateOfApp,
  });

  final String stateOfApp;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        stateOfApp,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
    );
  }
}
