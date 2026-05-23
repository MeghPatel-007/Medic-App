import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medic/core/theme/app_color.dart';

Widget circleBtn(
  BuildContext context,
  FaIconData fontIcon,
  Widget path, {
  Color color = AppColors.blue,
  Color bgcolor = AppColors.violet
}) {
  return Padding(
    padding: EdgeInsets.all(4),
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
