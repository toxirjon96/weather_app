import 'package:weather_app/weather_app_library.dart';

class ExpandedNextPageBody extends StatelessWidget {
  const ExpandedNextPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: NextPageAppBar(),
        ),
        Expanded(
          flex: 10,
          child: Column(
            children: [
              const Expanded(
                child: TopContainer(),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
