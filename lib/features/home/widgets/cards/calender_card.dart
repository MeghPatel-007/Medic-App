import 'package:flutter/material.dart';
import 'package:medic/core/theme/app_color.dart';


//! no applicable to all devices
Widget calendarCard(String date, String day, bool active) {
  return Container(
    width: 50,
    margin: const EdgeInsets.only(right: 7),
    decoration: BoxDecoration(
      color: active ? AppColors.blue : AppColors.white,
      borderRadius: BorderRadius.circular(50),
    ),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          date,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: active ? AppColors.white : AppColors.black,
          ),
        ),
        Text(
          day,
          style: TextStyle(
            fontSize: 14,
            color: active ? AppColors.white : AppColors.black,
          ),
        ),
      ],
    ),
  );
}

