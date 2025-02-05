import 'package:day3/widgets/all_widget.dart';
import 'package:flutter/material.dart';

class HomeTablet extends StatefulWidget {
  const HomeTablet({super.key});

  @override
  State<HomeTablet> createState() => _HomeTabletState();
}

class _HomeTabletState extends State<HomeTablet> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildBackgroundStack(context),
        buildCircularBorder(size: 30, left: 200, top: 100),
        buildCircularBorder(size: 15, right: 100, top: 130),
        buildCircularBorder(size: 20, right: 300, top: 130),
        buildCircularBorder(size: 20, left: 200, top: 300),
        buildCircularBorder(size: 15, right: 300, bottom: 250),
        buildCircularBorder(size: 50, left: 200, bottom: 100),
        buildCircularBorder(size: 15, right: 300, bottom: 130),
        buildCircularBorder(size: 20, right: 170, bottom: 130),
        Positioned.fill(
          left: 60,
          right: 60,
          top: 60,
          bottom: 60,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildLogo(context),
                  Image.asset("assets/images/search.png"),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildNavigationMenu(context),
                    buildMainContent(context),
                  ],
                ),
              ),
              buildSocialIcons(context),
            ],
          ),
        ),
      ],
    );
  }
}
