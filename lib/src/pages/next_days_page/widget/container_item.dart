import 'package:weather_app/weather_app_library.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({
    super.key,
    required this.dayName,
    required this.celsius,
    required this.image,
  });

  final String dayName;
  final String celsius;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: const Color(0xFFFCD3AB),
          borderRadius: BorderRadius.circular(20)),
      child: RowItem(
        dayName: dayName,
        celsius: celsius,
        image: image,
      ),
    );
  }
}
