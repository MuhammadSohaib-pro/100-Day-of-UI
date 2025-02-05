import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation1;
  late Animation<double> _scaleAnimation2;
  late Animation<double> _scaleAnimation3;
  late Animation<double> _scaleAnimation4;
  late Animation<double> _opacityAnimation1;
  late Animation<double> _opacityAnimation2;
  late Animation<double> _opacityAnimation3;
  late Animation<double> _opacityAnimation4;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    // First image animations (lightish yellow)
    _scaleAnimation1 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.25, curve: Curves.easeOut),
      ),
    );
    _opacityAnimation1 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.25, curve: Curves.easeIn),
      ),
    );

    // Second image animations (dark pink)
    _scaleAnimation2 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.25, 0.50, curve: Curves.easeOut),
      ),
    );
    _opacityAnimation2 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.25, 0.50, curve: Curves.easeIn),
      ),
    );
    // Third image animations (yellow)
    _scaleAnimation3 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.50, 0.75, curve: Curves.easeOut),
      ),
    );
    _opacityAnimation3 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.50, 0.75, curve: Curves.easeIn),
      ),
    );
    // Fourth image animations (white)
    _scaleAnimation4 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.75, 1.0, curve: Curves.easeOut),
      ),
    );
    _opacityAnimation4 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.75, 1.0, curve: Curves.easeIn),
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcd5b8),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Stack(
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // First image (lightish yellow)
                    ScaleTransition(
                      scale: _scaleAnimation1,
                      child: FadeTransition(
                        opacity: _opacityAnimation1,
                        child: SizedBox(
                          width: 124.62,
                          height: 124.62,
                          child: Image.asset(
                              "assets/images/icon_lightish_yellow.png"),
                        ),
                      ),
                    ),
                    // Second image (dark pink)
                    Positioned(
                      top: 9,
                      child: ScaleTransition(
                        scale: _scaleAnimation2,
                        child: FadeTransition(
                          opacity: _opacityAnimation2,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 90,
                                height: 90,
                                child: Image.asset(
                                    "assets/images/icon_dark_pink.png"),
                              ),
                              // Third image (yellow)
                              Positioned(
                                bottom: 0,
                                child: ScaleTransition(
                                  scale: _scaleAnimation3,
                                  child: FadeTransition(
                                    opacity: _opacityAnimation3,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          width: 45,
                                          height: 70,
                                          child: Image.asset(
                                              "assets/images/icon_yellow.png"),
                                        ),
                                        // Fourth image (white)
                                        Positioned(
                                          bottom: 0,
                                          child: ScaleTransition(
                                            scale: _scaleAnimation4,
                                            child: FadeTransition(
                                              opacity: _opacityAnimation4,
                                              child: SizedBox(
                                                width: 30,
                                                height: 40,
                                                child: Image.asset(
                                                    "assets/images/icon_white.png"),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 1.7,
                left: MediaQuery.of(context).size.width / 2.4,
                child: const Text(
                  'Drop.in',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.32,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
