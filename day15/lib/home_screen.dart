import 'package:day15/model/game_model.dart';
import 'package:day15/painters/custom_rectangle_painter.dart';
import 'package:day15/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;

  int currentIndex = 0;
  double pageValue = 0.0;
  final List<GameModel> games = [
    GameModel(
      imagePath: "assets/images/callofduty.png",
      title: "CALL OF DUTY",
      subtitle: "Beginner Level",
      titleColor: const Color(0xFFFFEC3A),
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 0.37],
        colors: [
          Color(0xFFFFEC3A),
          Color(0xFF1B1C1E),
        ],
      ),
    ),
    GameModel(
      imagePath: "assets/images/pubg.png",
      title: "PUBG",
      subtitle: "Top 10",
      titleColor: const Color(0xFF18B35B),
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 0.37],
        colors: [
          Color(0xFF18B35B),
          Color(0xFF1B1C1E),
        ],
      ),
    ),
    GameModel(
      imagePath: "assets/images/firefire.png",
      title: "FREE FIRE",
      subtitle: "High Intensity",
      titleColor: const Color(0xFFDF0815),
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 0.37],
        colors: [
          Color(0xFFDF0815),
          Color(0xFF1B1C1E),
        ],
      ),
    ),
    GameModel(
      imagePath: "assets/images/fortnite.jpg",
      title: "FORTNITE",
      subtitle: "Pro Level",
      titleColor: const Color(0xFF2BBEFF),
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 0.37],
        colors: [
          Color(0xFF2BBEFF),
          Color(0xFF1B1C1E),
        ],
      ),
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(
      initialPage: currentIndex,
      viewportFraction: 0.5,
    )..addListener(() {
        setState(() {
          pageValue = _pageController.page!;
        });
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1C1E),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                gradient: games[currentIndex].gradient,
              ),
            ),
          ),
          CustomPaint(
            size: const Size(219, 268),
            painter: CustomRectanglePainter(
              color: const Color(0xFF1B1C1E),
              topWidth: (219 / 4).toDouble(),
            ),
            child: Container(),
          ),
          Positioned.fill(
            top: 115,
            child: PageView.builder(
              controller: _pageController,
              itemCount: games.length,
              physics: const AlwaysScrollableScrollPhysics(),
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Builder(builder: (context) {
                  return Transform.translate(
                    offset: Offset(0.0, _calculateOffset(index)),
                    child: _pageViewBody(index),
                  );
                });
              },
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.6,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Start Watching Your Favourites Games',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    height: 1.37,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Unlock the extraordinary live stream adventure',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF464950),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.37,
                  ),
                ),
                const SizedBox(height: 30),
                CustomProgressIndicator(
                    currentIndex: currentIndex, games: games),
              ],
            ),
          )
        ],
      ),
    );
  }

  double _calculateOffset(int index) {
    if (index == pageValue.floor() + 1 || index == pageValue.floor() + 2) {
      return -42;
    } else if (index == pageValue.floor() - 1) {
      return -62;
    }
    return 0;
  }

  Widget _pageViewBody(int index) {
    return Column(
      children: [
        const SizedBox(height: 85),
        currentIndex == index
            ? Text(
                games[index].title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: games[index].titleColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.30,
                ),
              )
            : const SizedBox(),
        const SizedBox(height: 8),
        _imageContainer(index),
      ],
    );
  }

  Widget _imageContainer(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: 156,
      height: 156,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(games[index].imagePath),
          fit: BoxFit.cover,
        ),
        shadows: currentIndex == index
            ? [
                BoxShadow(
                  color: games[index].titleColor.withOpacity(0.5),
                  blurRadius: 20,
                  offset: const Offset(0, 0),
                ),
              ]
            : [],
        shape: const OvalBorder(),
      ),
    );
  }
}
