import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medic/helper/capsule_btn.dart';
import 'package:medic/helper/inputter.dart';
import 'package:medic/pages/homepage.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: const Color.fromARGB(255, 34, 96, 255),
          ),
        ),
        title: Center(
          child: Text(
            "Set Password",
            style: GoogleFonts.leagueSpartan(
              color: const Color.fromARGB(255, 34, 96, 255),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // width: ,
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(
                  fontSize: 12,
                  color: const Color.fromARGB(255, 7, 7, 7),
                ),
              ),
              SizedBox(height: 50),
              Inputter(
                title: "Password",
                placeholder: "*************",
                ispassword: true,
              ),
              Inputter(
                title: "Confirm Password",
                placeholder: "*************",
                ispassword: true,
              ),
              SizedBox(height: 40),
              Center(
                child: capsuleBtn(context, "Create new password", HomePage()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
