import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

Widget inputter(String title,String placeholder,bool iconVal) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(padding:EdgeInsets.symmetric(vertical: 5),
      child: Text(
        title,
        style: GoogleFonts.leagueSpartan(
          color: Colors.black,
          fontWeight: FontWeight(600),
          fontSize: 18
        ),
      ),

      ),
      Padding(padding: EdgeInsets.all(5),
      child:
      TextField(
        style: GoogleFonts.leagueSpartan(
          color: const Color.fromARGB(255, 128, 156, 255),
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 236, 241, 255),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none
          ),
            hintText: placeholder,
          hintStyle: TextStyle(
            color: const Color.fromARGB(255, 128, 156, 255),
          ),
        suffixIcon: IconButton(
          //! Working is left
          onPressed: (){}, icon: Icon(iconVal ? Icons.remove_red_eye_outlined : null
        ))

        )
      ),
      )
    ],
  );
}
