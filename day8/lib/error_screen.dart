import 'package:flutter/material.dart';
import 'package:text_gradiate/text_gradiate.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({super.key});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(180.0, 80.0, 180.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextGradiate(
                text: Text(
                  '404',
                  style: TextStyle(
                    fontSize: 352,
                    fontWeight: FontWeight.w900,
                    height: 1.24,
                  ),
                ),
                colors: [Color(0xFF0765E3), Color(0xFFAD01FF)],
                gradientType: GradientType.linear,
                begin: Alignment(-0.28, -0.96),
                end: Alignment(0.28, 0.96),
                tileMode: TileMode.clamp,
              ),
              const Text(
                "Oops, you still haven't\nfound what you looking for? ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 42,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 1.24,
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'The page you are looking for might have been removed, \nhad its name changed, or is temporarily unavailable.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 1.56,
                ),
              ),
              const SizedBox(height: 64),
              Row(
                children: [
                  Container(
                    width: 99,
                    height: 72,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-0.28, -0.96),
                        end: Alignment(0.28, 0.96),
                        colors: [Color(0xFF0765E3), Color(0xFFAD01FF)],
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/back_arrow_icon.png"),
                  ),
                  const SizedBox(width: 24),
                  const Text(
                    'Back to Home Page',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 1.56,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
