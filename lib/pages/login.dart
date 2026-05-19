import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medic/helper/circle_btn.dart';
import 'package:medic/helper/capsule_btn.dart';
import 'package:medic/helper/inputter.dart';
import 'package:medic/pages/homepage.dart';
import 'package:medic/pages/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            "Log In",
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
              Inputter(
                title: "Email or Mobile Number",
                placeholder: "example@example.com",
                ispassword: false,
              ),
              Inputter(
                title: "Password",
                placeholder: "**********",
                ispassword: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password",
                    style: GoogleFonts.leagueSpartan(
                      color: const Color.fromARGB(255, 34, 96, 255),
                      fontWeight: FontWeight(600),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Center(child: capsuleBtn(context, "Log In", HomePage())),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "or sign up with",
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 7, 7, 7),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //! Path for google Facebook Fingerprint
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleBtn(context, FontAwesomeIcons.google, Login()),
                  // circleBtn(context, FontAwesomeIcons.facebook, Login()),
                  circleBtn(context, FontAwesomeIcons.github, Login()),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      children: [
                        TextSpan(text: "Don't have an account?  "),
                        TextSpan(
                          text: "Sign Up",
                          style: GoogleFonts.leagueSpartan(
                            color: const Color.fromARGB(255, 34, 96, 255),
                            fontWeight: FontWeight(600),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Signup(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
