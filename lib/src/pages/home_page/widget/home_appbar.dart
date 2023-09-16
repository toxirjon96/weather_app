import 'package:flutter/cupertino.dart';
import 'package:weather_app/weather_app_library.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.search,
                size: 40,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
