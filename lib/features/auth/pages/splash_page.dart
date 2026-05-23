import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medic/features/auth/pages/welcome_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Welcome()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 97, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            SvgPicture.asset('lib/assets/logo.svg', width: 150),
            SizedBox(height: 15),
            Text(
              "Skin",
              style: GoogleFonts.leagueSpartan(
                fontWeight: FontWeight(100),
                fontSize: 48,
                height: 0,
                color: Colors.white,
              ),
            ),
            Text(
              "Firts",
              style: GoogleFonts.leagueSpartan(
                fontWeight: FontWeight(100),
                height: 0,
                fontSize: 48,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Dermatology center",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
