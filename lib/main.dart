import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:medic/pages/splash.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      // theme: ThemeData(textTheme: GoogleFonts.leagueSpartanTextTheme()),
    );
  }
}
