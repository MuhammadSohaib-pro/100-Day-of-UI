import 'package:day3/responsive/responsive.dart';
import 'package:flutter/material.dart';

const _secondaryBlue = Color(0xFF3F21D0);
const _gradientColors = [Color(0xFFDF387C), Color(0xFFFF602C)];

Widget buildBackgroundStack(BuildContext context) {
  final isTablet = Responsive.isTablet(context);
  return Stack(
    children: [
      Positioned(
        top: isTablet ? -30 : -50,
        right: isTablet ? 30 : 50,
        left: isTablet ? 30 : 50,
        bottom: isTablet ? -30 : -50,
        child: Container(
          decoration: const BoxDecoration(
            color: _secondaryBlue,
            shape: BoxShape.circle,
          ),
        ),
      ),
      Positioned(
        left: 150,
        right: 150,
        bottom: 150,
        top: 150,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              end: Alignment(-0.77, -0.64),
              begin: Alignment(0.77, 0.64),
              colors: _gradientColors,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
      Positioned(
        left: isTablet ? 160 : 130,
        right: isTablet ? 160 : 130,
        bottom: isTablet ? 160 : 130,
        top: isTablet ? 160 : 130,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/samsung_gear_vr.png"),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildCircularBorder({
  required double size,
  double? left,
  double? right,
  double? top,
  double? bottom,
}) {
  return Positioned(
    left: left,
    right: right,
    top: top,
    bottom: bottom,
    child: Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget buildLogo(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 50,
        width: 50,
        child: Image.asset("assets/images/logo.png"),
      ),
      const Text(
        'VR SHOP',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontStyle: FontStyle.italic,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w800,
          height: .3,
        ),
      )
    ],
  );
}

Widget buildSocialIcons(BuildContext context) {
  return Row(
    children: [
      Image.asset("assets/images/twitter.png"),
      const SizedBox(width: 25),
      Image.asset("assets/images/facebook.png"),
    ],
  );
}

Widget buildNavigationMenu(BuildContext context) {
  final isMobile = Responsive.isMobile(context);
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment:
        isMobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
    children: [
      const Text(
        'Gear VR',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      ),
      const SizedBox(height: 32),
      Text(
        'Design\n\nDisplay\n\nExperience\n\nSpec\n\nGallery',
        style: TextStyle(
          color: Colors.white.withOpacity(0.5),
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      ),
    ],
  );
}

Widget mobileNavigationMenu(BuildContext context) {
  return Stack(
    children: [
      Container(
        color: Colors.white10,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 1.4,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: buildNavigationMenu(context),
        ),
      ),
      Positioned(
        right: 20,
        top: 20,
        child: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).closeDrawer();
              },
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 26,
              ),
            );
          },
        ),
      ),
    ],
  );
}

Widget buildMainContent(BuildContext context) {
  final isTablet = Responsive.isTablet(context);
  final isMobile = Responsive.isMobile(context);
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'GEAR ',
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile
                    ? 40
                    : isTablet
                        ? 60
                        : 140,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                height: 0.4,
                letterSpacing: 5,
              ),
            ),
            TextSpan(
              text: 'VR\n',
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile
                    ? 40
                    : isTablet
                        ? 60
                        : 140,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                height: 0.4,
                letterSpacing: 5,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.right,
      ),
      SizedBox(
        width: isTablet ? 220 : 310,
        height: isMobile ? 80 : 100,
        child: Text(
          "It's easy to get lost in the world of virtual reality because the Gear VR is engineered to feel lighter.",
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
            fontSize: isTablet ? 14 : 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            height: isMobile ? 1.3 : 1.77,
          ),
        ),
      ),
      const SizedBox(height: 10),
      _buildFindOutMoreButton(context),
      const SizedBox(height: 30),
    ],
  );
}

Widget _buildFindOutMoreButton(BuildContext context) {
  return Container(
    width: 171.33,
    height: 54.38,
    decoration: ShapeDecoration(
      gradient: const LinearGradient(
        end: Alignment(-0.63, 0.78),
        begin: Alignment(0.63, -0.78),
        colors: _gradientColors,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      shadows: const [
        BoxShadow(
          color: Color(0x4C000000),
          blurRadius: 45,
          offset: Offset(0, 15),
          spreadRadius: 0,
        )
      ],
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Find out more',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(width: 5),
        Icon(
          Icons.arrow_forward_rounded,
          color: Colors.white,
          size: 20,
        )
      ],
    ),
  );
}
