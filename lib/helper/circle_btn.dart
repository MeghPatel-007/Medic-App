import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget circleBtn(
  BuildContext context,
  FaIconData fontIcon,
  Widget path, {
  Color color = const Color.fromARGB(255, 34, 96, 255),
  Color bgcolor = const Color.fromARGB(255, 128, 156, 255)
}) {
  return Padding(
    padding: EdgeInsets.all(7),
    child: IconButton(
      icon: FaIcon(fontIcon, color: color, size: 28),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => path));
      },
      style: ElevatedButton.styleFrom(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: bgcolor,
      ),
    ),
  );
}
