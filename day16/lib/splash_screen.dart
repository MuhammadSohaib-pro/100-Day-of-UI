import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  // Controllers
  late AnimationController _slideTopController;
  late AnimationController _flipXController;
  late AnimationController _sizeController;
  late AnimationController _slideBottomController;

  // animations
  late Animation<Offset> _slideAnimation;
  late Animation<double> _flipXAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<Offset> _slideBottomAnimation;

  @override
  void initState() {
    super.initState();
    _slideTopController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, -3.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _slideTopController,
        curve: Curves.easeInOutBack,
      ),
    );

    _flipXController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _flipXAnimation = Tween<double>(
      begin: 1,
      end: -1,
    ).animate(
      CurvedAnimation(
        parent: _flipXController,
        curve: Curves.easeInOutBack,
      ),
    );

    _sizeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _sizeAnimation = Tween<double>(begin: 230, end: 135).animate(
      CurvedAnimation(
        parent: _sizeController,
        curve: Curves.easeInOutBack,
      ),
    );

    _slideBottomController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _slideBottomAnimation = Tween<Offset>(
      begin: const Offset(0.0, 2.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _slideBottomController,
        curve: Curves.easeInOut,
      ),
    );

    _slideTopController.forward().then((_) {
      _flipXController.forward().then((_) {
        _sizeController.forward();
        _slideBottomController.forward();
      });
    });
    Future.delayed(const Duration(milliseconds: 800), () {
      _slideTopController.forward().then((_) {
        Future.delayed(const Duration(milliseconds: 100), () {
          _flipXController.forward().then((_) {
            Future.delayed(const Duration(milliseconds: 500), () {
              _sizeController.forward();
              _slideBottomController.forward();
            });
          });
        });
      });
    });
  }

  @override
  void dispose() {
    _slideTopController.dispose();
    _flipXController.dispose();
    _sizeController.dispose();
    _slideBottomController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.2588, -0.9659),
                  end: Alignment(-0.9659, 0.2588),
                  colors: [Color(0xFF4196E3), Color(0xFF373598)],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: AnimatedBuilder(
              animation: Listenable.merge(
                [
                  _slideTopController,
                  _flipXController,
                  _slideBottomController,
                  _sizeController
                ],
              ),
              builder: (context, child) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SlideTransition(
                    position: _slideAnimation,
                    child: Transform.scale(
                      scaleX: _flipXAnimation.value,
                      child: Container(
                        width: _sizeAnimation.value,
                        height: _sizeAnimation.value,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: const Offset(0, 50),
                              blurRadius: 50,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SlideTransition(
                    position: _slideBottomAnimation,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 40),
                        const Text(
                          'Lorem ipsum',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 29.09,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 13),
                        const SizedBox(
                          width: 282.33,
                          height: 56.67,
                          child: Text(
                            'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 31),
                        Container(
                          width: 289.08,
                          height: 53.50,
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF1778F2),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: Colors.white.withOpacity(0.5),
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 33.50,
                                height: 33.50,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF1778F2),
                                  shape: OvalBorder(
                                    side: BorderSide(
                                        width: 0.82, color: Colors.white),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/images/fb_logo.png',
                                  width: 20.50,
                                  height: 20.50,
                                ),
                              ),
                              const SizedBox(width: 14),
                              const SizedBox(
                                width: 211.59,
                                child: SizedBox(
                                  width: 211.59,
                                  child: Text(
                                    'Sign Up With Facebook',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 21),
                        Container(
                          width: 289.08,
                          height: 53.50,
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: Colors.white.withOpacity(0.5),
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 33.50,
                                height: 33.50,
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: OvalBorder(
                                    side: BorderSide(
                                      width: 0.82,
                                      color: Color(0xFF676767),
                                    ),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/images/gmail_logo.png',
                                  width: 20.50,
                                  height: 20.50,
                                ),
                              ),
                              const SizedBox(width: 14),
                              const SizedBox(
                                width: 211.59,
                                child: SizedBox(
                                  width: 211.59,
                                  child: Text(
                                    'Sign Up With Google',
                                    style: TextStyle(
                                      color: Color(0xFF676767),
                                      fontSize: 18,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 31),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Already have an account? ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'Sign In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
