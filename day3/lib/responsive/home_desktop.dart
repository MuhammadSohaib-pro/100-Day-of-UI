import 'package:flutter/material.dart';
import 'package:day3/widgets/all_widget.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildBackgroundStack(context),
        buildCircularBorder(size: 30, left: 530, top: 100),
        buildCircularBorder(size: 15, right: 700, top: 130),
        buildCircularBorder(size: 20, right: 400, top: 130),
        buildCircularBorder(size: 20, left: 550, top: 400),
        buildCircularBorder(size: 15, right: 800, bottom: 250),
        buildCircularBorder(size: 50, left: 510, bottom: 100),
        buildCircularBorder(size: 15, right: 700, bottom: 130),
        buildCircularBorder(size: 20, right: 370, bottom: 130),
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
