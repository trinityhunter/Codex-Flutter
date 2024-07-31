import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ordersize extends StatelessWidget {
  final String size;

  final bool isSelected;

  const Ordersize({super.key, required this.size, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 100,
      decoration: BoxDecoration(
          color: isSelected ? Color.fromARGB(255, 255, 230, 215) : Colors.white,
          border: isSelected
              ? Border.all(color: Color(0xFFC67C4E))
              : Border.all(color: Color(0xFFDEDEDE)),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Center(
        child: Text(size,
            style: isSelected
                ? GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC67C4E))
                : GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2F2D2C))),
      ),
    );
  }
}
