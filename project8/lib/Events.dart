// import 'package:flutter/material.dart';

// class Events extends StatelessWidget {
//   final String title;

//   final String imgUrl;

//   const Events({super.key, required this.title, required this.imgUrl});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 113,
//       width: 113,
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black, width: 0.1),
//         borderRadius: BorderRadius.all(Radius.circular(20)),
//         boxShadow: [
//         BoxShadow(
//           color: Colors.grey.withOpacity(0.5),
//           spreadRadius: 2,
//           blurRadius: 1,
//           offset: Offset(5, 5),
//         )
//       ]),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Container(
//             child: Image.asset(imgUrl),
//           ),
//           Text(title)
//         ],
//       )
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Events extends StatelessWidget {
  final String title;
  final String imgUrl;

  const Events({super.key, required this.title, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113,
      width: 113,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                offset: Offset(8, 8),
                blurRadius: 2,
                spreadRadius: 1,
                color: Color.fromARGB(255, 228, 228, 228))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Image.asset(imgUrl),
          ),
          Text(
            title,
            style: GoogleFonts.poppins(),
          )
        ],
      ),
    );
  }
}
