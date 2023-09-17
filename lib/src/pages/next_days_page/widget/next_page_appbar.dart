import 'package:weather_app/weather_app_library.dart';

class NextPageAppBar extends StatefulWidget {
  const NextPageAppBar({super.key});

  @override
  State<StatefulWidget> createState() => _NextPageAppBarState();
}

class _NextPageAppBarState extends State<NextPageAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        const Text(
          "Next 7 Days",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
