

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final int price;
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 360,
          height: 400,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF2F2F2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Positioned.fill(
                left: 20,
                right: 20,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF9B9A9B),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          '€$price',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF1A1A1A),
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
