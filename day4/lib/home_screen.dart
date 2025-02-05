import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  late final Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
      reverseCurve: Curves.easeInOut,
    )..addStatusListener((status) {
        setState(() {});
      });
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 44,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Following',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:
                                  Colors.white.withOpacity(0.6000000238418579),
                              fontSize: 16,
                              fontFamily: 'Proxima Nova',
                            ),
                          ),
                          const SizedBox(width: 25),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                'For You',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Proxima Nova',
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                height: 3,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        const TextSpan(
                                          text: '@',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                        const TextSpan(
                                          text: 'karennne',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontFamily: 'Proxima Nova',
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' · ',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(
                                                0.6000000238418579),
                                            fontSize: 17,
                                            fontFamily: 'Proxima Nova',
                                          ),
                                        ),
                                        TextSpan(
                                          text: '1',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(
                                                0.6000000238418579),
                                            fontSize: 15,
                                            fontFamily: 'Proxima Nova',
                                          ),
                                        ),
                                        TextSpan(
                                          text: '-',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(
                                                0.6000000238418579),
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '28',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(
                                                0.6000000238418579),
                                            fontSize: 15,
                                            fontFamily: 'Proxima Nova',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '#',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                height: 1.30,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'avicii',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontFamily: 'Proxima Nova',
                                                height: 1.30,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '#',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                height: 1.30,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'wflove',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontFamily: 'Proxima Nova',
                                                height: 1.30,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          'assets/images/music_icon.png'),
                                      const SizedBox(width: 6),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Avicii ',
                                              style: TextStyle(
                                                color: Colors.white.withOpacity(
                                                    0.8999999761581421),
                                                fontSize: 15,
                                                fontFamily: 'Proxima Nova',
                                                height: 1.30,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '-',
                                              style: TextStyle(
                                                color: Colors.white.withOpacity(
                                                    0.8999999761581421),
                                                fontSize: 15,
                                                height: 1.30,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' Waiting For Love ',
                                              style: TextStyle(
                                                color: Colors.white.withOpacity(
                                                    0.8999999761581421),
                                                fontSize: 15,
                                                fontFamily: 'Proxima Nova',
                                                height: 1.30,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '(',
                                              style: TextStyle(
                                                color: Colors.white.withOpacity(
                                                    0.8999999761581421),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                height: 1.30,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'ft. ',
                                              style: TextStyle(
                                                color: Colors.white.withOpacity(
                                                    0.8999999761581421),
                                                fontSize: 15,
                                                fontFamily: 'Proxima Nova',
                                                height: 1.30,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 47,
                                  height: 58.50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 47,
                                          height: 47,
                                          decoration: const ShapeDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/user.png"),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: OvalBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignOutside,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 13,
                                        top: 37.50,
                                        child: SizedBox(
                                          width: 21,
                                          height: 21,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 21,
                                                  height: 21,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    color: Color(0xFFEA4359),
                                                    shape: OvalBorder(),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: const Icon(
                                                    Icons.add,
                                                    size: 15,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 23),
                                Column(
                                  children: [
                                    Image.asset("assets/images/heart_icon.png"),
                                    const SizedBox(height: 5),
                                    const Text(
                                      '328.7K',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Proxima Nova',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 23),
                                Column(
                                  children: [
                                    Image.asset(
                                        "assets/images/message_icon.png"),
                                    const SizedBox(height: 5),
                                    const Text(
                                      '578',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Proxima Nova',
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 23),
                                const Column(
                                  children: [
                                    Icon(
                                      Icons.bookmark_rounded,
                                      color: Colors.white,
                                      size: 35,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '2,073',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Proxima Nova',
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 23),
                                Column(
                                  children: [
                                    Image.asset("assets/images/share_icon.png"),
                                    const SizedBox(height: 5),
                                    const Text(
                                      'Share',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Proxima Nova',
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 23),
                                AnimatedRotation(
                                  turns: _animation.value,
                                  duration: const Duration(seconds: 2),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: SweepGradient(
                                            center: Alignment(-0.01, 0.99),
                                            startAngle: 0,
                                            endAngle: 2 * 3.14,
                                            colors: [
                                              Color(0xFF171717),
                                              Color(0xFF373736),
                                              Color(0xFF171717),
                                              Color(0xFF373736),
                                            ],
                                            stops: [0.0, 0.25, 0.5, 0.75],
                                          ),
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/images/user.png",
                                        width: 27,
                                        height: 27,
                                        fit: BoxFit.contain,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF262626),
                    blurRadius: 0,
                    offset: Offset(0, -0.33),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/home_solid_icon.png"),
                      const SizedBox(height: 5),
                      const Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Proxima Nova',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/search_icon.png"),
                      const SizedBox(height: 5),
                      const Text(
                        'Discover',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Proxima Nova',
                          letterSpacing: 0.15,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 43,
                        height: 28,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 7,
                              top: 0,
                              child: Container(
                                width: 36,
                                height: 28,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFE6436D),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 36,
                                height: 28,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF65D2E9),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 3.50,
                              top: 0,
                              child: Container(
                                width: 36,
                                height: 28,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child:
                                    Image.asset("assets/images/plus_icon.png"),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/message_stroke_icon.png"),
                      const SizedBox(height: 5),
                      const Text(
                        'Inbox',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Proxima Nova',
                          letterSpacing: 0.15,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/account_strok_icon.png"),
                      const SizedBox(height: 5),
                      const Text(
                        'Me',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Proxima Nova',
                          letterSpacing: 0.15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 414,
              height: 25,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: Stack(
                children: [
                  const Positioned(
                    left: 0,
                    top: -1,
                    child: SizedBox(width: 414, height: 25),
                  ),
                  Positioned(
                    left: 140,
                    top: 12,
                    child: Container(
                      width: 134,
                      height: 5,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE9E9E9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
