import 'package:weather_app/weather_app_library.dart';

class NextDaysPage extends StatelessWidget{
  const NextDaysPage({super.key});

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
        ),
      ),
    );
  }

}