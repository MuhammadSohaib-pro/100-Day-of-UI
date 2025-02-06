import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 28,
            width: 28,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        title: const Text(
          'Music',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w500,
            height: 1.29,
            letterSpacing: -0.41,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Stack(
            alignment: Alignment.center,
            children: [
              const SizedBox(
                width: 260,
                height: 400,
              ),
              Positioned(
                bottom: 5,
                child: Container(
                  width: 213,
                  height: 278,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black.withOpacity(0.10),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  width: 260,
                  height: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/music.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          const Text(
            'Music & Sounds',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w500,
              height: 1.29,
              letterSpacing: -0.41,
            ),
          ),
          const Text(
            'Audio878',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              height: 1.12,
              letterSpacing: 0.32,
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(
            width: 343,
            child: Text(
              '1987 Special edition volume and + legendary sound with crazy authentic photos',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF8C8C8C),
                fontSize: 20,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 1.15,
                letterSpacing: 0.26,
              ),
            ),
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/userpic.png"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                'Audio878',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                  height: 1.29,
                  letterSpacing: -0.41,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
