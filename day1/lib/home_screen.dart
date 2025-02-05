import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final AnimationController _opacityController;

  late final Animation<double?> _animationOpacity1;
  late final Animation<double?> _animationposition1;
  late final Animation<double?> _animationposition2;
  late final Animation<double?> _animationposition3;
  late final Animation<double?> _animationposition4;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _opacityController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _animationposition1 = Tween<double>(begin: 0, end: 120)
        .chain(CurveTween(curve: Curves.easeIn))
        .animate(_controller)
      ..addListener(listener);
    _animationOpacity1 = Tween<double>(begin: 0, end: 1)
        .chain(CurveTween(curve: Curves.easeIn))
        .animate(_opacityController)
      ..addListener(listener);
    _animationposition2 = Tween<double>(begin: 0, end: 60)
        .chain(CurveTween(curve: Curves.easeIn))
        .animate(_controller)
      ..addListener(listener);
    _animationposition3 = Tween<double>(begin: 0, end: -25)
        .chain(CurveTween(curve: Curves.easeIn))
        .animate(_controller)
      ..addListener(listener);
    _animationposition4 = Tween<double>(begin: 0, end: -30)
        .chain(CurveTween(curve: Curves.easeIn))
        .animate(_controller)
      ..addListener(listener);

    _controller.forward();
    _opacityController.forward();
    super.initState();
  }

  void listener() {
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 897,
            width: 500,
            decoration: const BoxDecoration(color: Colors.white),
          ),
          Positioned(
            top: -150,
            left: -150,
            right: -150,
            child: Container(
              width: 750,
              height: 750,
              decoration: const ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF301CC7), Color(0xFF5A45E3)],
                ),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            right: 50,
            bottom: _animationposition1.value ?? 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: const Color(0xff6548DA).withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Opacity(
              opacity: _animationOpacity1.value ?? 0,
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/on_shape.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: _animationposition2.value ?? 60,
            left: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: 125,
                  child: CustomPaint(
                    painter: TrapezoidPainter(),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 250,
            left: _animationposition3.value ?? -25,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform.rotate(
                  angle: math.pi / 4.0,
                  child: Container(
                    height: 20,
                    width: 90,
                    decoration: BoxDecoration(
                      color: const Color(0xff6548DA).withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            right: _animationposition4.value ?? -30,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform.rotate(
                  angle: math.pi / 4.0,
                  child: Container(
                    height: 20,
                    width: 90,
                    decoration: BoxDecoration(
                      color: const Color(0xff6548DA).withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 100.0, 50.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 106.58,
                    width: 97.18,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'PROTECT\nYOUR DATA\nWITH US.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 5.40,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '230,100.04',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.80,
                          ),
                        ),
                        TextSpan(
                          text: ' People trust us!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.80,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    width: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: const Color(0xff6548DA).withOpacity(0.5))),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xff6548DA).withOpacity(0.2),
                            ),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Email address',
                                style: TextStyle(
                                  color: Color(0xFF533EDE),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.80,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Divider(
                              color: const Color(0xff6548DA).withOpacity(0.2)),
                          const SizedBox(height: 10),
                          Container(
                            height: 60,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xff6548DA).withOpacity(0.2),
                            ),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Password',
                                style: TextStyle(
                                  color: Color(0xFF533EDE),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.80,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF533EDE),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.10,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already Signed Up? ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.50,
                              ),
                            ),
                            TextSpan(
                              text: 'Log in',
                              style: TextStyle(
                                color: Color(0xFF3D28CF),
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TrapezoidPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff6548DA).withOpacity(0.5)
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width * 0.3, 0)
      ..lineTo(size.width * 0.7, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
