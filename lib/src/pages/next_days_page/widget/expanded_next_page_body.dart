import 'package:weather_app/weather_app_library.dart';

class ExpandedNextPageBody extends StatelessWidget {
  const ExpandedNextPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: ExpandedNextPageBody(),
        ),
        Expanded(
          flex: 10,
          child: Container(
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
