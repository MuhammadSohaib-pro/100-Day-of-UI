import 'package:day13/product_detail_screen.dart';
import 'package:day13/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<dynamic> products = [
    {
      'title': 'Outcast cotton tshirt for men',
      'price': 17.55,
      'image': 'assets/images/product1.png'
    },
    {
      'title': 'Danger black cotton tshirt - unisex',
      'price': 12.99,
      'image': 'assets/images/product2.png'
    },
    {
      'title': 'Combo couple tshirt unisex',
      'price': 20.55,
      'image': 'assets/images/product3.png'
    },
    {
      'title': 'Couple cotton tshirt unisex',
      'price': 14.88,
      'image': 'assets/images/product4.png'
    },
    {
      'title': 'Outcast cotton tshirt for men',
      'price': 17.55,
      'image': 'assets/images/product1.png'
    },
    {
      'title': 'Danger black cotton tshirt - unisex',
      'price': 12.99,
      'image': 'assets/images/product2.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Explore Tshirts',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.28,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/serch_icon.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                mainAxisExtent: 400,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  image: products[index]['image'],
                  title: products[index]['title'],
                  price: products[index]['price'],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductDetailScreen(),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/home_icon.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/shirt_icon.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/heart_filled_icon.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/user_icon.png"),
            label: '',
          ),
        ],
      ),
    );
  }
}
