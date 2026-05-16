import 'package:flutter/material.dart';

Widget capsuleBtn(BuildContext context, String name, Widget page) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    style: ElevatedButton.styleFrom(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      backgroundColor: const Color.fromARGB(255, 34, 96, 255),
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
    ),
    child: Text(
      name,
      style: TextStyle(
        color: const Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  );
}
