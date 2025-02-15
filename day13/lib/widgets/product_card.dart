import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final double price;
  final VoidCallback onPressed;

  const ProductCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: onPressed,
              child: Container(
                height: 272,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 25,
              top: 25,
              child: Image.asset("assets/images/heart_icon.png"),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            letterSpacing: 1.12,
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$$price',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                letterSpacing: 1.28,
              ),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: ShapeDecoration(
                color: const Color(0xFF1CAC94),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                image: const DecorationImage(
                  image: AssetImage("assets/images/cart_icon.png"),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
