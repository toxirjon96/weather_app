import 'package:flutter/cupertino.dart';
import 'package:weather_app/weather_app_library.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
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
