import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medic/helper/inputter.dart';
import 'package:medic/pages/welcome.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Welcome()),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: const Color.fromARGB(255, 34, 96, 255),
          ),
        ),
        title: Center(
          child: Text(
            "Log In",
            style: GoogleFonts.leagueSpartan(
              color: const Color.fromARGB(255, 34, 96, 255),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        // width: ,
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: GoogleFonts.leagueSpartan(
                color: const Color.fromARGB(255, 34, 96, 255),
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: TextStyle(
                fontSize: 12,
                color: const Color.fromARGB(255, 7, 7, 7),
              ),
            ),
            SizedBox(height: 50),
            inputter("Email or Mobile Number","example@example.com",false),
            inputter("Password","**********",true),
          ],
        ),
      ),
    );
  }
}
