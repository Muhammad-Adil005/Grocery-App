import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class numericButton extends StatelessWidget {
  numericButton({required this.num, required this.onPress});
  final String num;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress(),
      child: Center(
        child: Text(
          num,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w700,
            fontSize: 27,
            color: Color(0xff06161C),
          ),
        ),
      ),
    );
  }
}