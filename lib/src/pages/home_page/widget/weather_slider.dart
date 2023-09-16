import 'package:weather_app/weather_app_library.dart';

class WeatherSlider extends StatelessWidget {
  const WeatherSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const RawScrollbar(
      scrollbarOrientation: ScrollbarOrientation.top,
      thumbVisibility: true,
      thickness: 4,
      thumbColor: Colors.black,
      radius: Radius.circular(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
            SliderItem(),
          ],
        ),
      ),
    );
  }
}

class SliderItem extends StatelessWidget {
  const SliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 5,
        top: 10,
        right: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("now"),
          Image.asset(
            "assets/images/sunny.png",
            width: 60,
            fit: BoxFit.cover,
          ),
          const Text("19°"),
        ],
      ),
    );
  }
}
