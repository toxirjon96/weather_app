import 'package:weather_app/src/pages/next_days_page/widget/container_item.dart';
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
                child: ListView(
                  children: [
                    ContainerItem(
                      dayName: "Thursday",
                      celsius: "21 °",
                      image: Image.asset(
                        "assets/images/sunny.png",
                        fit: BoxFit.cover,
                        width: 90,
                      ),
                    ),
                    ContainerItem(
                      dayName: "Friday",
                      celsius: "24 °",
                      image: Image.asset(
                        "assets/images/sunny.png",
                        fit: BoxFit.cover,
                        width: 90,
                      ),
                    ),
                    ContainerItem(
                      dayName: "Saturday",
                      celsius: "18 °",
                      image: Image.asset(
                        "assets/images/sunny_with_cloud.png",
                        fit: BoxFit.cover,
                        width: 90,
                      ),
                    ),
                    ContainerItem(
                      dayName: "Sunday",
                      celsius: "12 °",
                      image: Image.asset(
                        "assets/images/windy.png",
                        fit: BoxFit.cover,
                        width: 90,
                      ),
                    ),
                    ContainerItem(
                      dayName: "Monday",
                      celsius: "16 °",
                      image: Image.asset(
                        "assets/images/rainy.png",
                        fit: BoxFit.cover,
                        width: 90,
                      ),
                    ),
                    ContainerItem(
                      dayName: "Tuesday",
                      celsius: "18 °",
                      image: Image.asset(
                        "assets/images/rainy.png",
                        fit: BoxFit.cover,
                        width: 90,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
