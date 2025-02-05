import 'package:flutter/material.dart';

class SingleProductScreen extends StatefulWidget {
  const SingleProductScreen({super.key});

  @override
  State<SingleProductScreen> createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {
  int selectedColor = 1;
  int selectedSize = 1;

  final _colors = [
    {'name': 'Black', 'asset': 'assets/images/black_color.png'},
    {'name': 'Grey', 'asset': 'assets/images/grey_color.png'},
    {'name': 'Walnut', 'asset': 'assets/images/walnut_color.png'},
  ];

  final _sizes = [
    {
      'name': 'Echo\nStandard',
    },
    {
      'name': 'Echo\n+ Echo 2 Dot',
    },
    {
      'name': 'Echo Stereo\n+ Echo Sub',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Color(0xFFEDF0F7)),
          ),
          Positioned.fill(
            top: 200,
            bottom: 200,
            left: 300,
            right: 300,
            child: _buildMainContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 35),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadows: const [
          BoxShadow(
            color: Color(0x7FD1D5DF),
            blurRadius: 30,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Image.asset("assets/images/echo_image.png"),
          ),
          Expanded(
            flex: 6,
            child: _buildProductDetails(),
          ),
        ],
      ),
    );
  }

  Widget _buildProductDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildText('Echo 2', 48,
            weight: FontWeight.w700, color: const Color(0xFF15181A)),
        const SizedBox(height: 10),
        _buildText('Smart speaker with Alexa', 18, weight: FontWeight.w400),
        const SizedBox(height: 15),
        _buildText('\$99.99', 24, color: const Color(0xFF848996)),
        const SizedBox(height: 24),
        _buildText('Choose Color', 16),
        const SizedBox(height: 12),
        _buildColorOptions(),
        const SizedBox(height: 20),
        _buildText('Choose Size', 16),
        const SizedBox(height: 15),
        _buildSizeOptions(),
      ],
    );
  }

  Widget _buildText(String text, double size,
      {Color? color, FontWeight? weight}) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? const Color(0xFF141721),
        fontSize: size,
        fontFamily: 'Roboto',
        fontWeight: weight ?? FontWeight.w400,
        height: 1.22,
      ),
    );
  }

  Widget _buildColorOptions() {
    return Row(
      children: _colors.asMap().entries.map((entry) {
        final index = entry.key + 1;
        final color = entry.value;
        return Row(
          children: [
            GestureDetector(
              onTap: () => setState(() => selectedColor = index),
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(color['asset'].toString()),
                    fit: BoxFit.fill,
                  ),
                ),
                alignment: Alignment.center,
                child: selectedColor == index
                    ? const Icon(Icons.done, color: Colors.white)
                    : null,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              color['name'].toString(),
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
                height: 1.50,
              ),
            ),
            const SizedBox(width: 25),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildSizeOptions() {
    return Row(
      children: _sizes.asMap().entries.map((entry) {
        final index = entry.key + 1;
        final size = entry.value;
        return Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () => setState(() => selectedSize = index),
            child: Container(
              width: 99,
              height: 66,
              decoration: _getSizeDecoration(index),
              alignment: Alignment.center,
              child: Text(
                size['name'].toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: selectedSize == index
                      ? Colors.white
                      : const Color(0xFF141721),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight:
                      selectedSize == index ? FontWeight.w700 : FontWeight.w400,
                  height: 1.14,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  ShapeDecoration _getSizeDecoration(int index) {
    return ShapeDecoration(
      gradient: selectedSize == index
          ? const LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFFE23C79), Color(0xFFBF36D0)],
            )
          : null,
      shape: RoundedRectangleBorder(
        side: selectedSize != index
            ? const BorderSide(width: 2, color: Color(0xFFC2C6D1))
            : BorderSide.none,
        borderRadius: BorderRadius.circular(5),
      ),
      shadows: selectedSize == index
          ? const [
              BoxShadow(
                color: Color(0x33000000),
                blurRadius: 15,
                offset: Offset(0, 5),
              )
            ]
          : null,
    );
  }
}
