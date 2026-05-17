import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Inputter extends StatefulWidget {
  final String title;
  final String placeholder;
  final bool ispassword;
  const Inputter({
    super.key,
    required this.title,
    required this.placeholder,
    required this.ispassword,
  });

  @override
  State<Inputter> createState() => _InputterState();
}

class _InputterState extends State<Inputter> {
  bool _obsuredText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text(
            widget.title,
            style: GoogleFonts.leagueSpartan(
              color: Colors.black,
              fontWeight: FontWeight(600),
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(3),
          child: TextField(
            obscuringCharacter: '*',
            style: GoogleFonts.leagueSpartan(
              color: const Color.fromARGB(255, 128, 156, 255),
            ),
            obscureText: widget.ispassword ? _obsuredText : false,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(255, 236, 241, 255),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              hintText: widget.placeholder,
              hintStyle: TextStyle(
                color: const Color.fromARGB(255, 128, 156, 255),
              ),
              suffixIcon: widget.ispassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          _obsuredText = !_obsuredText;
                        });
                      },
                      icon: Icon(
                        !_obsuredText ? Icons.visibility : Icons.visibility_off,
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
