import 'package:flutter/material.dart';

Widget CircleBtn(BuildContext context, IconData icon) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: IconButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: const Color.fromARGB(255, 128, 156, 255),
      ),
      icon: Icon(icon, color: const Color.fromARGB(255, 34, 96, 255), size: 34),
    ),
  );
}
