import 'package:day12/widgets/product_card.dart';
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
        leadingWidth: 200,
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Image.asset("assets/images/menu.png"),
              const SizedBox(width: 20),
              const Text(
                'Klipsch',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27.45,
                  fontWeight: FontWeight.w900,
                  height: 0.99,
                ),
              )
            ],
          ),
        ),
        actions: [
          Container(
            width: 39,
            height: 39,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/useravatar.png"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle),
          ),
          const SizedBox(width: 20),
          const Text(
            'Kate B.',
            style: TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.arrow_drop_down),
          const SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          const Text(
            'NUMBERS',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Co-ordinate campaigns and product launches',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF9B9A9B),
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductCard(
                image: 'assets/images/product1.png',
                title: 'A6 One-point Music System',
                price: 999,
              ),
              SizedBox(width: 30),
              ProductCard(
                image: 'assets/images/product2.png',
                title: 'Beolit 15 Portable Speaker',
                price: 499,
              ),
              SizedBox(width: 30),
              ProductCard(
                image: 'assets/images/product3.png',
                title: 'S3 Flexible Home Speaker',
                price: 399,
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        '© 2019 klipsch. All Rights Reserved',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'CONTACT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 1.71,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(width: 35),
                      Text(
                        'HELP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 1.71,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(width: 35),
                      Text(
                        'TERMS OF USE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 1.43,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(width: 35),
                      Text(
                        'PRIVACY POLICY',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 1.43,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/twitter.png"),
                      const SizedBox(width: 20),
                      Image.asset("assets/images/facebook.png"),
                      const SizedBox(width: 20),
                      Image.asset("assets/images/youTube.png"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
