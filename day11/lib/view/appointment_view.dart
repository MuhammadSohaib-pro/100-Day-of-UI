import 'package:flutter/material.dart';

class AppointmentView extends StatefulWidget {
  const AppointmentView({super.key});

  @override
  State<AppointmentView> createState() => _AppointmentViewState();
}

class _AppointmentViewState extends State<AppointmentView> {
  String selectedMonth = 'February';

  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  List<dynamic> daysAndDate = [
    {'day': 'Sat', 'date': 1},
    {'day': 'Sun', 'date': 2},
    {'day': 'Mon', 'date': 3},
    {'day': 'Tue', 'date': 4},
    {'day': 'Wed', 'date': 5},
    {'day': 'Thu', 'date': 6},
    {'day': 'Fri', 'date': 7},
    {'day': 'Sat', 'date': 8},
    {'day': 'Sun', 'date': 9},
    {'day': 'Mon', 'date': 10},
    {'day': 'Tue', 'date': 11},
    {'day': 'Wed', 'date': 12},
    {'day': 'Thu', 'date': 13},
    {'day': 'Fri', 'date': 14},
    {'day': 'Sat', 'date': 15},
    {'day': 'Sun', 'date': 16},
    {'day': 'Mon', 'date': 17},
    {'day': 'Tue', 'date': 18},
    {'day': 'Wed', 'date': 19},
    {'day': 'Thu', 'date': 20},
    {'day': 'Fri', 'date': 21},
    {'day': 'Sat', 'date': 22},
    {'day': 'Sun', 'date': 23},
    {'day': 'Mon', 'date': 24},
    {'day': 'Tue', 'date': 25},
    {'day': 'Wed', 'date': 26},
    {'day': 'Thu', 'date': 27},
    {'day': 'Fri', 'date': 28},
  ];
  List<dynamic> avialableSlot = [
    {"time": "10:30 AM", "status": true},
    {"time": "11:30 AM", "status": false},
    {"time": "12:30 PM", "status": false},
    {"time": "01:30 PM", "status": false},
    {"time": "02:30 PM", "status": false},
    {"time": "03:30 PM", "status": false},
    {"time": "04:30 PM", "status": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Appointment'),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 22,
            height: 24,
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              color: const Color(0xFFE3A2B1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 6.0),
              child: Icon(Icons.arrow_back_ios,
                  color: Color(0xFFD23C5C), size: 16),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/setting_icon.png"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/saloon.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
                const SizedBox(width: 25),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Evny Salon',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Toronto, Canada',
                      style: TextStyle(
                        color: Color(0xFF656565),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            DropdownButton<String>(
              value: selectedMonth,
              icon: const Icon(Icons.keyboard_arrow_down),
              elevation: 0,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              underline: Container(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedMonth = newValue!;
                });
              },
              focusColor: Colors.transparent,
              items: months.map<DropdownMenuItem<String>>((String month) {
                return DropdownMenuItem<String>(
                  value: month,
                  child: Text(month),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 96,
              child: ListView.builder(
                itemCount: daysAndDate.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final bool currentDay =
                      DateTime.now().day == daysAndDate[index]['date'];
                  return Container(
                    width: 51,
                    height: 94,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: ShapeDecoration(
                      color:
                          currentDay ? const Color(0xFFD23C5C) : Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          daysAndDate[index]['day'],
                          style: TextStyle(
                            color: currentDay
                                ? Colors.white
                                : const Color(0xFF343434),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          daysAndDate[index]['date'].toString(),
                          style: TextStyle(
                            color: currentDay
                                ? Colors.white
                                : const Color(0xFF777777),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Available slots',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 40,
              ),
              itemCount: avialableSlot.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  width: 80,
                  height: 39,
                  decoration: ShapeDecoration(
                    color: avialableSlot[index]['status'] == true
                        ? const Color(0xFFD23C5C)
                        : const Color(0xFFCDCDCD),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '10:30 AM',
                    style: TextStyle(
                      color: avialableSlot[index]['status'] == true
                          ? Colors.white
                          : Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              },
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 64,
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              decoration: ShapeDecoration(
                color: const Color(0xFFD23C5C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Book Appointment',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFCF6FC),
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
