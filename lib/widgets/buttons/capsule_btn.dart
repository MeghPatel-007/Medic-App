import 'package:flutter/material.dart';
import 'package:medic/core/theme/app_color.dart';

Widget capsuleBtn(BuildContext context, String name, Widget page) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    style: ElevatedButton.styleFrom(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      backgroundColor: AppColors.blue,
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
    ),
    child: Text(
      name,
      style: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  );
}
