import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medic/core/theme/app_color.dart';
import 'package:medic/features/home/widgets/cards/calender_tab.dart';
import 'package:medic/widgets/buttons/circle_btn.dart';
import 'package:medic/features/home/widgets/cards/doctor_card.dart';
import 'package:medic/features/auth/pages/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: h * .1,
        backgroundColor: AppColors.white,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leadingWidth: 80,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('lib/assets/profile/profile.jpg'),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, WelcomeBack",
              style: GoogleFonts.leagueSpartan(
                color: AppColors.blue,
                fontSize: 18,
              ),
            ),
            Text(
              "John Doe",
              style: GoogleFonts.leagueSpartan(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),

        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                circleBtn(
                  context,
                  FontAwesomeIcons.bell,
                  Login(),
                  color: AppColors.black,
                  bgcolor: AppColors.violet,
                ),
                circleBtn(
                  context,
                  FaIconData(Icons.settings),
                  Login(),
                  color: AppColors.black,
                  bgcolor: AppColors.violet,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: h * .01),
                          FaIcon(
                            FontAwesomeIcons.stethoscope,
                            color: AppColors.blue,
                            size: 24,
                          ),
                          SizedBox(height: h * .01),
                          Text(
                            "Doctors",
                            style: GoogleFonts.outfit(
                              color: AppColors.blue,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: w * .03),

                      Column(
                        children: [
                          SizedBox(height: h * .01),
                          FaIcon(
                            FontAwesomeIcons.heart,
                            color: AppColors.blue,
                            size: 24,
                          ),
                          SizedBox(height: h * .01),
                          Text(
                            "Favorite",
                            style: GoogleFonts.outfit(
                              color: AppColors.blue,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(width: w * .04),

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.violet,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          prefixIcon: Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(Icons.tune, color: AppColors.black),
                          ),

                          suffixIcon: Icon(Icons.search, color: AppColors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: h * .02),
              SizedBox(
                height: h * .1,
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
              calender(w, h),
              doctorCard(
                context,
                w,
                'Megh',
                'Doctor',
                '5',
                '5',
                'lib/assets/profile/profile.jpg',
              ),
              doctorCard(
                context,
                w,
                'Megh',
                'Doctor',
                '5',
                '5',
                'lib/assets/profile/profile.jpg',
              ),
              doctorCard(
                context,
                w,
                'Megh',
                'Doctor',
                '5',
                '5',
                'lib/assets/profile/profile.jpg',
              ),
              doctorCard(
                context,
                w,
                'Megh',
                'Doctor',
                '5',
                '5',
                'lib/assets/profile/profile.jpg',
              ),
              doctorCard(
                context,
                w,
                'Megh',
                'Doctor',
                '5',
                '5',
                'lib/assets/profile/profile.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//! no applicable to all devices
Widget calendarCard(String date, String day, bool active) {
  return Container(
    width: 50,
    margin: const EdgeInsets.only(right: 7),
    decoration: BoxDecoration(
      color: active ? AppColors.blue : AppColors.white,
      borderRadius: BorderRadius.circular(50),
    ),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          date,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: active ? AppColors.white : AppColors.black,
          ),
        ),
        Text(
          day,
          style: TextStyle(
            fontSize: 14,
            color: active ? AppColors.white : AppColors.black,
          ),
        ),
      ],
    ),
  );
}
