import 'dart:async';

import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  late Timer _timer;
  late Duration _remainingTime =
      const Duration(days: 12, hours: 9, minutes: 33, seconds: 8);

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        if (_remainingTime.inSeconds > 0) {
          _remainingTime = _remainingTime - const Duration(seconds: 1);
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final days = _remainingTime.inDays;
    final hours = _remainingTime.inHours.remainder(24);
    final minutes = _remainingTime.inMinutes.remainder(60);
    final seconds = _remainingTime.inSeconds.remainder(60);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              decoration: const BoxDecoration(
                color: Color(0xFF2D2D2D),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/apple.png'),
                  const Text(
                    'Store',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    'Mac',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    'iPad',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    'iPhone',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    'Watch',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    'Airpods',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    'TV & Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    'Only on Apple',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    'Accessories',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    'Support',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Image.asset("assets/images/search.png"),
                  Image.asset("assets/images/cart.png"),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Image.asset(
                          "assets/images/iphone14pro.png",
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Are you ready?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Launch of the most amazing iPhone ever',
                        style: TextStyle(
                          color: Color(0xFF858586),
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        width: 549,
                        height: 130,
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  days.toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text(
                                  'DAYS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF858586),
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFC1C0C2),
                                    shape: OvalBorder(),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFC1C0C2),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  hours.toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text(
                                  'HOURS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF858586),
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFC1C0C2),
                                    shape: OvalBorder(),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFC1C0C2),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  minutes.toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text(
                                  'MINUTES',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF858586),
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFC1C0C2),
                                    shape: OvalBorder(),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFC1C0C2),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  seconds.toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text(
                                  'SECONDS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF858586),
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 80),
                      const Text(
                        'iPhone 14 Pro',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Text(
                        'Pro. Beyond.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
