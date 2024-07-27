import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  final bool? isDefault;
  final String title;

  const Category({super.key, this.isDefault, required this.title});

  @override
  Widget build(BuildContext context) {
    if (isDefault == true) {
      return Container(
        height: 40,
        width: 100,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(0xFF283048),
        ),
        child: Center(
            child: Text(title,
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 183, 111, 111)))),
      );
    }

    return Container(
      height: 40,
      width: 100,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: Color(0xFF283048), width: 2)),
      child: Center(
          child: Text(title,
              style: GoogleFonts.poppins(
                  color: Color(0xFF283048),
                  fontSize: 12,
                  fontWeight: FontWeight.w600))),
    );
  }
}
