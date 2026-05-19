import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medic/helper/capsule_btn.dart';
import 'package:medic/helper/circle_btn.dart';
import 'package:medic/helper/inputter.dart';
import 'package:medic/pages/login.dart';
import 'package:medic/pages/setpassword.dart';

class Inputfieldtext {
  final String title;
  final String placeholder;
  final bool ispassword;
  const Inputfieldtext({
    required this.title,
    required this.placeholder,
    required this.ispassword,
  });
}

class Signup extends StatelessWidget {
  const Signup({super.key});
  final List<Inputfieldtext> list = const [
    Inputfieldtext(title: "Full name", placeholder: "xyz", ispassword: false),
    Inputfieldtext(
      title: "Password",
      placeholder: "*************",
      ispassword: true,
    ),
    Inputfieldtext(
      title: "Email",
      placeholder: "example@example.com",
      ispassword: false,
    ),
    Inputfieldtext(
      title: "Mobile Number",
      placeholder: "+91 1234567890",
      ispassword: false,
    ),
    Inputfieldtext(
      title: "Date Of Birth",
      placeholder: "DD / MM / YYYY",
      ispassword: false,
    ),
  ];
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
            "New Account",
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
              Column(
                children: list.map((field) {
                  return Inputter(
                    title: field.title,
                    placeholder: field.placeholder,
                    ispassword: field.ispassword,
                  );
                }).toList(),
              ),

              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "By continuing, you agree to",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      children: [
                        //! terms of use
                        TextSpan(
                          text: "Terms of Use",
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
                        TextSpan(text: "  and  "),
                        //! Privacy Policy
                        TextSpan(
                          text: "Privacy Policy.",
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
              SizedBox(height: 12),
              Center(child: capsuleBtn(context, "Sign Up", SetPassword())),
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
              //! Path for google Facebook Fingerprint
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleBtn(context, FontAwesomeIcons.google, Login()),
                  // circleBtn(context, FontAwesomeIcons.facebook, Login()),
                  circleBtn(context, FontAwesomeIcons.github, Login()),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      children: [
                        TextSpan(text: "already have an account?  "),
                        TextSpan(
                          text: "Log in",
                          style: GoogleFonts.leagueSpartan(
                            color: const Color.fromARGB(255, 34, 96, 255),
                            fontWeight: FontWeight(600),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
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
