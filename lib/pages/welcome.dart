import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(height: 150),
            SvgPicture.asset('lib/assets/logo-invert.svg', width: 150),
            SizedBox(height: 15),
            Text(
              "Skin",
              style: GoogleFonts.leagueSpartan(
                fontWeight: FontWeight(100),
                fontSize: 48,
                height: 0,
                color: const Color.fromARGB(255, 34, 96, 255),
              ),
            ),
            Text(
              "Firts",
              style: GoogleFonts.leagueSpartan(
                fontWeight: FontWeight(100),
                height: 0,
                fontSize: 48,
                color: const Color.fromARGB(255, 34, 96, 255),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Dermatology center",
              style: TextStyle(
                color: const Color.fromARGB(255, 34, 96, 255),
                fontWeight: FontWeight.bold,
                fontSize: 12,
                height: 1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 90,
                bottom: 30,
                left: 30,
                right: 30,
              ),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                style: TextStyle(
                  fontSize: 12,
                  color: const Color.fromARGB(255, 7, 7, 7),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                backgroundColor: const Color.fromARGB(255, 34, 96, 255),
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              child: Text(
                "Log In",
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                backgroundColor: const Color.fromARGB(255, 202, 214, 255),
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: const Color.fromARGB(255, 34, 96, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
