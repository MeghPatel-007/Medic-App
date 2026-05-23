import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:medic/core/theme/app_color.dart';

Widget calender(double w,double h) {
  return Container(
    padding: const EdgeInsets.all(12),

    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(35),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "11 Wednesday - Today",
              style: TextStyle(
                color: AppColors.blue,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: w * .12,
              alignment: Alignment.center,
              child: Text(
                "9 AM",
                style: TextStyle(color: AppColors.blue, fontSize: 14),
              ),
            ),

            SizedBox(width: w * .05),
            //dashed line
            Expanded(
              child: DottedLine(
                direction: Axis.horizontal,
                dashLength: 6,
                dashGapLength: 4,
                lineThickness: 2,
                dashColor: AppColors.blue,
              ),
            ),
          ],
        ),
        SizedBox(height: h * .01),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: w * .12,
                  alignment: Alignment.center,
                  child: Text(
                    "10 AM",
                    style: TextStyle(color: AppColors.blue, fontSize: 14),
                  ),
                ),

                SizedBox(height: h * .03),
                Container(
                  width: w * .12,
                  alignment: Alignment.center,
                  child: Text(
                    "11 AM",
                    style: TextStyle(color: AppColors.blue, fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(width: w * .1),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),

                decoration: BoxDecoration(
                  color: AppColors.violet,
                  borderRadius: BorderRadius.circular(30),
                ),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            "Dr. Olivia Turner, M.D.",
                            style: TextStyle(
                              color: AppColors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: h * 0.01),

                          Text(
                            "Treatment and prevention of skin and photodermatitis.",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColors.white,

                          child: Icon(
                            Icons.check,
                            color: AppColors.blue,
                            size: 18,
                          ),
                        ),

                        SizedBox(width: 5),

                        CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColors.white,

                          child: Icon(
                            Icons.close,
                            color: AppColors.blue,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: h * .01),
        Row(
          children: [
            Container(
              width: w * .12,
              alignment: Alignment.center,
              child: Text(
                "12 AM",
                style: TextStyle(color: AppColors.blue, fontSize: 14),
              ),
            ),
            SizedBox(width: w * .05),

            Expanded(
              child: DottedLine(
                direction: Axis.horizontal,
                dashLength: 6,
                dashGapLength: 4,
                lineThickness: 2,
                dashColor: AppColors.blue,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
