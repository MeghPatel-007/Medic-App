import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medic/helper/circle_btn.dart';
import 'package:medic/pages/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('lib/assets/profile/profile.jpg'),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, WelcomeBack",
                  style: GoogleFonts.leagueSpartan(
                    color: const Color.fromARGB(255, 34, 96, 255),
                    fontSize: 20,
                  ),
                ),
                Text(
                  "John Doe",
                  style: GoogleFonts.leagueSpartan(
                    fontSize: 20,
                    fontWeight: FontWeight(500),
                  ),
                ),
              ],
            ),
            actions: [
              circleBtn(
                context,
                FaIconData(Icons.notifications),
                Login(),
                color: Colors.black,
                bgcolor: Color.fromARGB(255, 202, 214, 255),
              ),
              circleBtn(
                context,
                FaIconData(Icons.settings),
                Login(),
                color: Colors.black,
                bgcolor: Color.fromARGB(255, 202, 214, 255),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(height: 10),
                    FaIcon(
                      FontAwesomeIcons.stethoscope,
                      color: const Color.fromARGB(255, 34, 96, 255),
                      size: 30,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Doctors",
                      style: GoogleFonts.outfit(
                        color: const Color.fromARGB(255, 34, 96, 255),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    SizedBox(height: 10),
                    FaIcon(
                      FontAwesomeIcons.heart,
                      color: const Color.fromARGB(255, 34, 96, 255),
                      size: 30,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Favorite",
                      style: GoogleFonts.outfit(
                        color: const Color.fromARGB(255, 34, 96, 255),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                SizedBox(
                  width: 280,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFDCE3FF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,

                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),

                        prefixIcon: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(Icons.tune, color: Colors.black),
                        ),

                        suffixIcon: const Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  calendarCard("9", "MON", false),
                  calendarCard("10", "TUE", false),
                  calendarCard("11", "WED", true),
                  calendarCard("12", "THU", false),
                  calendarCard("13", "FRI", true),
                  calendarCard("14", "SAT", true),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  // TIME COLUMN
                  Column(
                    children: const [
                      Text(
                        "9 AM",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),

                      SizedBox(height: 35),

                      Text(
                        "10 AM",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),

                      SizedBox(height: 35),

                      Text(
                        "11 AM",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),

                      SizedBox(height: 35),

                      Text(
                        "12 AM",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                    ],
                  ),

                  const SizedBox(width: 20),

                  // RIGHT SIDE
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        // TITLE
                        Align(
                          alignment: Alignment.centerRight,

                          child: Text(
                            "11 Wednesday - Today",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        // TOP DASHED LINE
                        Row(
                          children: List.generate(
                            40,
                            (index) => Expanded(
                              child: Container(
                                height: 2,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 2,
                                ),
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // APPOINTMENT CARD
                        Container(
                          padding: const EdgeInsets.all(20),

                          decoration: BoxDecoration(
                            color: const Color(0xFFDCE3FF),
                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text(
                                      "Dr. Olivia Turner, M.D.",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    SizedBox(height: 10),

                                    Text(
                                      "Treatment and prevention of skin and photodermatitis.",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),

                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 14,
                                    backgroundColor: Colors.white,

                                    child: Icon(
                                      Icons.check,
                                      color: Colors.blue,
                                      size: 18,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  CircleAvatar(
                                    radius: 14,
                                    backgroundColor: Colors.white,

                                    child: Icon(
                                      Icons.close,
                                      color: Colors.blue,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 30),

                        // BOTTOM DASHED LINE
                        Row(
                          children: List.generate(
                            40,
                            (index) => Expanded(
                              child: Container(
                                height: 2,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 2,
                                ),
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget calendarCard(String date, String day, bool active) {
  return Container(
    width: 60,
    margin: const EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      color: active ? const Color.fromARGB(255, 34, 96, 255) : Colors.white,
      borderRadius: BorderRadius.circular(50),
    ),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          date,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: active ? Colors.white : Colors.black,
          ),
        ),
        Text(
          day,
          style: TextStyle(
            fontSize: 18,
            color: active ? Colors.white : Colors.black,
          ),
        ),
      ],
    ),
  );
}
