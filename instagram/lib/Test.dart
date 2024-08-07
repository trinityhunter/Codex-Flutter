// import 'package:flutter/material.dart';
// import 'package:flutter_instagram_storyboard/flutter_instagram_storyboard.dart';

// class Test extends StatefulWidget {
//   const Test({super.key});

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
    
//     return StoryPageScaffold(
//       // bottomNavigationBar: addBottomBar
//           // ? 
//           bottomNavigationBar : SizedBox(
//               width: double.infinity,
//               height: kBottomNavigationBarHeight,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 8.0,
//                   horizontal: 20.0,
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         width: double.infinity,
//                         height: double.infinity,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Colors.white,
//                             width: 2.0,
//                           ),
//                           borderRadius: BorderRadius.circular(
//                             50.0,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Icon(
//                         Icons.send,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//       //     : const SizedBox.shrink(),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//               'images/TomCruise.jpe',
//             ),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Text(
//                 "Tom Cruise",
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
  
// }