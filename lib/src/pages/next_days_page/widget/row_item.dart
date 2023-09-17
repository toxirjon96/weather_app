import 'package:weather_app/weather_app_library.dart';

class RowItem extends StatelessWidget {
  const RowItem({
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dayName,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            Text(
              celsius,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            image,
          ],
        ),
      ],
    );
  }
}
