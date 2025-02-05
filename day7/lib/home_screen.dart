import 'package:day7/model/exercise_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;

  int currentIndex = 0;
  double pageValue = 0.0;
  // List of exercise data
  final List<ExerciseModel> exercises = [
    ExerciseModel(
      imagePath: "assets/images/gym1.png",
      title: "Yoga Poses",
      subtitle: "Beginner Level",
    ),
    ExerciseModel(
      imagePath: "assets/images/gym2.png",
      title: "Mat Exercises",
      subtitle: "Top 10",
    ),
    ExerciseModel(
      imagePath: "assets/images/gym3.png",
      title: "Cardio Workout",
      subtitle: "High Intensity",
    ),
    ExerciseModel(
      imagePath: "assets/images/gym4.png",
      title: "Strength Training",
      subtitle: "Core Focus",
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(
      initialPage: currentIndex,
      viewportFraction: 0.7,
    )..addListener(() {
        setState(() {
          if (_pageController.hasClients && _pageController.page != null) {
            setState(() {
              pageValue = _pageController.page!;
            });
          }
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFF1F00),
                  Color(0xFFFF6F00),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -150,
            left: -100,
            right: -100,
            child: Container(
              width: 572,
              height: 572,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 60, 20, 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/user_image.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sara Main',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: -0.72,
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.80,
                                  child: Text(
                                    'Reached goals: 5',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/menu_icon.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/my_exercise.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'My Exercises',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/my_workouts.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'My Workouts',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 50),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/body_score.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'Body Score',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/eqiupment.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'Equipment',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: exercises.length,
                    physics: const ClampingScrollPhysics(),
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      Widget imageContainer = Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 290,
                        width: 280,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(exercises[index].imagePath),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      );

                      Widget textContent = Column(
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            exercises[index].title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.72,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            exercises[index].subtitle,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      );

                      if (index == pageValue.floor() + 1 ||
                          index == pageValue.floor() + 2) {
                        /// Right
                        return Builder(builder: (context) {
                          return Transform.translate(
                            offset: const Offset(0.0, 100),
                            child: Column(
                              children: [
                                imageContainer,
                              ],
                            ),
                          );
                        });
                      } else if (index == pageValue.floor() - 1) {
                        /// left
                        return Builder(builder: (context) {
                          return Transform.translate(
                            offset: const Offset(0.0, 100),
                            child: Column(
                              children: [
                                imageContainer,
                              ],
                            ),
                          );
                        });
                      } else {
                        /// middle
                        return Builder(builder: (context) {
                          return Column(
                            children: [
                              Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  const SizedBox(height: 360, width: 280),
                                  Opacity(
                                    opacity: 0.50,
                                    child: Container(
                                      width: 220,
                                      height: 207.46,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFF2F2F2),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 20,
                                    child: Opacity(
                                      opacity: 0.80,
                                      child: Container(
                                        width: 250,
                                        height: 260.18,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFF2F2F2),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 40,
                                    child: imageContainer,
                                  )
                                ],
                              ),
                              textContent,
                            ],
                          );
                        });
                      }
                    },
                  ),
                ),
                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black.withOpacity(0.20000000298023224),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/home_icon.png"),
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Workout',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.20000000298023224),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/friends_icon.png"),
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Friends',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.20000000298023224),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/profile_icon.png"),
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Profile',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
