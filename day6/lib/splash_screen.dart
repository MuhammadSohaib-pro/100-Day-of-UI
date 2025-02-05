import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  // Controllers
  late AnimationController _slideController;
  late AnimationController _sizeController;
  late AnimationController _fillController;
  late AnimationController _opacityController;
  // animations
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<double> _radiusAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _slideController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _sizeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _fillController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _opacityController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, -3.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _slideController,
        curve: Curves.bounceOut,
      ),
    );

    _sizeAnimation = Tween<double>(
      begin: 195,
      end: 298,
    ).animate(
      CurvedAnimation(
        parent: _sizeController,
        curve: Curves.bounceOut,
      ),
    );

    _radiusAnimation = Tween<double>(begin: 150, end: 0).animate(
      CurvedAnimation(
        parent: _fillController,
        curve: Curves.bounceOut,
      ),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _opacityController,
        curve: Curves.bounceOut,
      ),
    );

    _slideController.forward().then((value) {
      _sizeController.forward().then((value) {
        _fillController.forward().then(
          (value) {
            _opacityController.forward();
          },
        );
      });
    });
  }

  @override
  void dispose() {
    _slideController.dispose();
    _sizeController.dispose();
    _fillController.dispose();
    _opacityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedBuilder(
        animation: Listenable.merge([
          _slideController,
          _sizeController,
          _fillController,
          _opacityController
        ]),
        // animation: _slideController,
        builder: (context, child) {
          // Calculate current width and height
          final width = _fillController.value == 0
              ? _sizeAnimation.value
              : _sizeAnimation.value +
                  (_fillController.value *
                      (screenWidth - _sizeAnimation.value));

          final height = _fillController.value == 0
              ? _sizeAnimation.value
              : _sizeAnimation.value +
                  (_fillController.value *
                      (screenHeight - _sizeAnimation.value));

          return Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: screenHeight,
                width: screenWidth,
              ),
              SlideTransition(
                position: _offsetAnimation,
                child: Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF2E63),
                    borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  ),
                  alignment: Alignment.center,
                  child: Opacity(
                    opacity: _opacityAnimation.value,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Bouncing',
                          style: TextStyle(
                            color: Color(0xFF252A34),
                            fontSize: 128,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Balls',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 128,
                            fontWeight: FontWeight.w400,
                            height: 0.5,
                          ),
                        )
                      ],
                    ),
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
