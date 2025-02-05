import 'package:day3/responsive/home_desktop.dart';
import 'package:day3/responsive/home_mobile.dart';
import 'package:day3/responsive/home_tablet.dart';
import 'package:day3/responsive/responsive.dart';
import 'package:day3/widgets/all_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const _primaryBlue = Color(0xFF160C6E);
  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Scaffold(
      backgroundColor: _primaryBlue,
      drawer: isMobile ? mobileNavigationMenu(context) : null,
      body: LayoutBuilder(
        builder: (context, constraints) => const Responsive(
          mobile: HomeMobile(),
          tablet: HomeTablet(),
          desktop: HomeDesktop(),
        ),
      ),
    );
  }
}
