import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  String selectedSize = 'L';
  Color selectedColor = const Color(0xFF1E1E1E);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/product2_large.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Text(
                        'Danger black cotton tshirt - unisex',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.44,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        '\$12.99',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.92,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text(
                      'Size:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.44,
                      ),
                    ),
                    const SizedBox(width: 40),
                    sizeButton('S'),
                    const SizedBox(width: 15),
                    sizeButton('M'),
                    const SizedBox(width: 15),
                    sizeButton('L'),
                    const SizedBox(width: 15),
                    sizeButton('XL'),
                    const SizedBox(width: 15),
                    sizeButton('XXL'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text(
                      'Color:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.44,
                      ),
                    ),
                    const SizedBox(width: 40),
                    colorButton(const Color(0xFF1E1E1E)),
                    const SizedBox(width: 15),
                    colorButton(const Color(0xFFDFDFE0)),
                    const SizedBox(width: 15),
                    colorButton(const Color(0xFF8C9A9D)),
                    const SizedBox(width: 15),
                    colorButton(const Color(0xFF5D222D)),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Description:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.44,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "This premium T-shirt is as close to perfect as can be. It's optimized for all types of print and will quickly become your favorite T-shirt. Soft, comfortable and durable, this is a definite must-own.",
                  style: TextStyle(
                    color: Color(0xFFAFB1B3),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.96,
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 165,
                        height: 44,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 2, color: Color(0xFF1CAC94)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Buy Now',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1CAC94),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.96,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                        child: Container(
                      width: 165,
                      height: 44,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1CAC94),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Add to Cart',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.96,
                        ),
                      ),
                    )),
                  ],
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget sizeButton(String size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        width: 35,
        height: 35,
        decoration: ShapeDecoration(
          color: selectedSize == size
              ? const Color(0xFF1CAC94)
              : const Color(0xFFEFF0F0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        alignment: Alignment.center,
        child: Text(
          size,
          textAlign: TextAlign.center,
          style: TextStyle(
            color:
                selectedSize == size ? Colors.white : const Color(0xFF87898B),
            fontSize: 12,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.96,
          ),
        ),
      ),
    );
  }

  Widget colorButton(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = color;
        });
      },
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: selectedColor == color
                ? const Color(0xFF1CAC94)
                : Colors.transparent,
          ),
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: 24,
            height: 24,
            decoration: ShapeDecoration(
              color: color,
              shape: const OvalBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
