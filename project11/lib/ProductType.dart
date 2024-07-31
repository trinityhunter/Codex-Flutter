import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Producttype extends StatelessWidget {
  final String title;
  final bool isDefault;

  Producttype({super.key, required this.title, required this.isDefault});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: isDefault ? Color(0xFFC67C4E) : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Center(
        child: isDefault ? Text(title, style: GoogleFonts.sora(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),)
        : Text(title, style: GoogleFonts.sora(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),)
      ),
    );
  }
}
