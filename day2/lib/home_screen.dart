import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final AnimationController _sizingController;
  late final Animation<double?> _animationPosition;
  late final Animation<double?> _animationSize;
  bool isHover = false;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _sizingController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animationPosition = Tween<double>(begin: 500, end: 32)
        .chain(CurveTween(curve: Curves.easeIn))
        .animate(_controller)
      ..addListener(listener);
    _animationSize = Tween<double>(begin: 250, end: 0)
        .chain(CurveTween(curve: Curves.fastOutSlowIn))
        .animate(_sizingController)
      ..addListener(
        listener,
      );

    _controller.forward();
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
      backgroundColor: const Color(0xff101112),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Checkout',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_horiz,
              color: Color(0xffDADADA),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 40),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      end: Alignment(-0.69, 0.73),
                      begin: Alignment(0.69, -0.73),
                      colors: [Color(0xFFD40C3D), Color(0xFFFF602C)],
                      transform: GradientRotation(pi / 2),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/map.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(22, 25, 22, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 14,
                              width: 43,
                              child: Image.asset("assets/images/visaLogo.png"),
                            ),
                            const Text(
                              'world',
                              style: TextStyle(
                                color: Color(0xFF940D21),
                                fontSize: 11,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Card number',
                              style: TextStyle(
                                color: Color(0xFF940D21),
                                fontSize: 11,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '4539   4659   2157 2356',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        // ignore: prefer_const_constructors
                        Row(
                          children: const [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Expiration',
                                    style: TextStyle(
                                      color: Color(0xFF940D21),
                                      fontSize: 11,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    '01/2024',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CVC',
                                    style: TextStyle(
                                      color: Color(0xFF940D21),
                                      fontSize: 11,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    '234',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _sizingController.forward(),
                  child: Container(
                    width: double.infinity,
                    height: _animationSize.value ?? 250,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        end: Alignment(-0.69, 0.73),
                        begin: Alignment(0.69, -0.73),
                        colors: [Color(0xFFD40C3D), Color(0xFFFF602C)],
                        transform: GradientRotation(pi / 2),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Click to view card details',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Purchase',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Color(0xffDADADA),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Men's Shoe",
                                        style: TextStyle(
                                          color: Color(0xFFA0A7BA),
                                          fontSize: 12,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        'Nike Shoe',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 36,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.56,
                                        ),
                                      ),
                                      Text(
                                        '\$ 320.99',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 83.21,
                                    height: 83.21,
                                    decoration: ShapeDecoration(
                                      gradient: const LinearGradient(
                                        begin: Alignment(-0.63, 0.78),
                                        end: Alignment(0.63, -0.78),
                                        colors: [
                                          Color(0xFFD40C3D),
                                          Color(0xFFFF602C)
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      shadows: const [
                                        BoxShadow(
                                          color: Color(0x4C000000),
                                          blurRadius: 45,
                                          offset: Offset(0, 15),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: _animationPosition.value ?? 32,
                  child: Container(
                    width: 320,
                    height: 320,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/shoes.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
