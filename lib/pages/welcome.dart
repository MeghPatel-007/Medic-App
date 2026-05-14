import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 97, 255),
      body: Center(
        child: SvgPicture.asset('lib/assets/logo.svg', width: 100),
        //       Text("Skin",
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 48,
        //       ),),
        //       Text("Firts",
        // style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 48,
        //       ),
        //       ),
        //       Text("Dermatology center",
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontWeight: FontWeight.bold,
        //         fontSize: 10
        //       ),),
      ),
    );
  }
}
