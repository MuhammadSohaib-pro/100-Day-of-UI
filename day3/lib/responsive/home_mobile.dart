import 'package:day3/widgets/all_widget.dart';
import 'package:flutter/material.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    const _secondaryBlue = Color(0xFF3F21D0);
    const _gradientColors = [Color(0xFFDF387C), Color(0xFFFF602C)];
    return Stack(
      children: [
        Stack(
          children: [
            Positioned(
              top: -10,
              right: 10,
              left: 10,
              bottom: -10,
              child: Container(
                decoration: const BoxDecoration(
                  color: _secondaryBlue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: 50,
              right: 50,
              bottom: 50,
              top: 50,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    end: Alignment(-0.77, -0.64),
                    begin: Alignment(0.77, 0.64),
                    colors: _gradientColors,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: 70,
              right: 70,
              bottom: 70,
              top: 70,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/samsung_gear_vr.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
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
                  Row(
                    children: [
                      Image.asset("assets/images/search.png"),
                      Builder(builder: (context) {
                        return IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: const Icon(
                            Icons.dashboard_rounded,
                            color: Colors.white,
                            size: 26,
                          ),
                        );
                      }),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: buildMainContent(context),
              ),
              buildSocialIcons(context),
            ],
          ),
        ),
      ],
    );
  }
}
