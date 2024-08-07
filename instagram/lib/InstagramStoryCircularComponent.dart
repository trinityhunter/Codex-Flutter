// import 'package:flutter/material.dart';
// import 'package:instagram/Accounts.dart';
// import 'package:instagram/StoryPage.dart';
// import 'package:instagram/Test.dart';
// import 'package:instagram/main.dart';

// class Instagramstorycircularcomponent extends StatelessWidget {
//   final String imgUrl;

//   final String name;

//   final UserModel userModel;

//   final List<Accounts> accounts;

//   const Instagramstorycircularcomponent(
//       {super.key,
//       required this.imgUrl,
//       required this.name,
//       required this.userModel,
//       required this.accounts
//       });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (Context) => StoryPage(
//                     imgUrl: imgUrl, name: name, userModel: userModel, accounts: accounts,)));
//       },
//       child: Container(
//         child: Column(
//           children: [
//             Container(
//               height: 100,
//               width: 100,
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(
//                   color: Colors.purple,
//                   width: 5,
//                 ),
//               ),
//               child: ClipOval(
//                 child: Image.asset(
//                   imgUrl,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Text(
//               name,
//               style: TextStyle(fontSize: 15, color: Colors.white),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:instagram/Accounts.dart';
import 'package:instagram/StoryPage.dart';
import 'package:instagram/Test.dart';
import 'package:instagram/main.dart';

class Instagramstorycircularcomponent extends StatelessWidget {
  final String imgUrl;

  final String name;

  final UserModel userModel;

  final List<Accounts> accounts;

  final bool? isDefault;

  const Instagramstorycircularcomponent(
      {super.key,
      required this.imgUrl,
      required this.name,
      required this.userModel,
      required this.accounts,
      this.isDefault});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isDefault == null
            ? Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (Context) => StoryPage(
                          imgUrl: imgUrl,
                          name: name,
                          userModel: userModel,
                          accounts: accounts,
                        )))
            : () {};
      },
      child: Container(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: isDefault == null
                      ? Border.all(
                          color: Colors.purple,
                          width: 5,
                        )
                      : Border(),
                ),
                child: ClipOval(
                  child: Image.asset(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              isDefault != null
                  ? Positioned(
                      right: 8,
                      bottom: 8,
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("images/add.png"),
                      ))
                  : Container()
            ]),
            Text(
              name,
              style: TextStyle(fontSize: 15, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_instagram_storyboard/flutter_instagram_storyboard.dart';

// class Instagramstorycircularcomponent extends StatefulWidget {
//   final String name;
//   final String imgUrl;

//   const Instagramstorycircularcomponent({super.key, required this.name, required this.imgUrl});

//   @override
//   State<Instagramstorycircularcomponent> createState() => _InstagramstorycircularcomponentState();
// }

// class _InstagramstorycircularcomponentState extends State<Instagramstorycircularcomponent> {
//   Widget _createDummyPage({
//     required String text,
//     required String imageName,
//     bool addBottomBar = true,
//   }) {
//     return StoryPageScaffold(
//       bottomNavigationBar: addBottomBar
//           ? SizedBox(
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
//             )
//           : const SizedBox.shrink(),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//               'assets/images/$imageName.png',
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
//                 text,
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

//   Widget _buildButtonText(String text) {
//     return Padding(
//       padding: const EdgeInsets.all(5.0),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Text(
//             text,
//             style: const TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   BoxDecoration _buildButtonDecoration(
//     String imageName,
//   ) {
//     return BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage(
//           'assets/images/$imageName.png',
//         ),
//         fit: BoxFit.cover,
//       ),
//     );
//   }

//   BoxDecoration _buildBorderDecoration(Color color) {
//     return BoxDecoration(
//       borderRadius: const BorderRadius.all(
//         Radius.circular(15.0),
//       ),
//       border: Border.fromBorderSide(
//         BorderSide(
//           color: color,
//           width: 1.5,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         title: const Text('Story Example'),
//       ),
//       body: Column(
//         children: [
//           StoryListView(
//             pageTransform: const StoryPage3DTransform(),
//             buttonDatas: [
//               StoryButtonData(
//                 timelineBackgroundColor: Colors.red,
//                 buttonDecoration: _buildButtonDecoration('car'),
//                 child: _buildButtonText('Want a new car?'),
//                 borderDecoration: _buildBorderDecoration(Colors.red),
//                 storyPages: [
//                   _createDummyPage(
//                     text:
//                         'Want to buy a new car? Get our loan for the rest of your life!',
//                     imageName: 'car',
//                   ),
//                   _createDummyPage(
//                     text:
//                         'Can\'t return the loan? Don\'t worry, we\'ll take your soul as a collateral ;-)',
//                     imageName: 'car',
//                   ),
//                 ],
//                 segmentDuration: const Duration(seconds: 3),
//               ),
//               StoryButtonData(
//                 timelineBackgroundColor: Colors.blue,
//                 buttonDecoration: _buildButtonDecoration('travel_1'),
//                 borderDecoration:
//                     _buildBorderDecoration(const Color.fromARGB(255, 134, 119, 95)),
//                 child: _buildButtonText('Travel whereever'),
//                 storyPages: [
//                   _createDummyPage(
//                     text: 'Get a loan',
//                     imageName: 'travel_1',
//                     addBottomBar: false,
//                   ),
//                   _createDummyPage(
//                     text: 'Select a place where you want to go',
//                     imageName: 'travel_2',
//                     addBottomBar: false,
//                   ),
//                   _createDummyPage(
//                     text: 'Dream about the place and pay our interest',
//                     imageName: 'travel_3',
//                     addBottomBar: false,
//                   ),
//                 ],
//                 segmentDuration: const Duration(seconds: 3),
//               ),
//               StoryButtonData(
//                 timelineBackgroundColor: Colors.orange,
//                 borderDecoration: _buildBorderDecoration(Colors.orange),
//                 buttonDecoration: _buildButtonDecoration('house'),
//                 child: _buildButtonText('Buy a house anywhere'),
//                 storyPages: [
//                   _createDummyPage(
//                     text: 'You cannot buy a house. Live with it',
//                     imageName: 'house',
//                   ),
//                 ],
//                 segmentDuration: const Duration(seconds: 5),
//               ),
//               StoryButtonData(
//                 timelineBackgroundColor: Colors.red,
//                 buttonDecoration: _buildButtonDecoration('car'),
//                 child: _buildButtonText('Want a new car?'),
//                 borderDecoration: _buildBorderDecoration(Colors.red),
//                 storyPages: [
//                   _createDummyPage(
//                     text:
//                         'Want to buy a new car? Get our loan for the rest of your life!',
//                     imageName: 'car',
//                   ),
//                   _createDummyPage(
//                     text:
//                         'Can\'t return the loan? Don\'t worry, we\'ll take your soul as a collateral ;-)',
//                     imageName: 'car',
//                   ),
//                 ],
//                 segmentDuration: const Duration(seconds: 3),
//               ),
//               StoryButtonData(
//                 buttonDecoration: _buildButtonDecoration('travel_1'),
//                 borderDecoration:
//                     _buildBorderDecoration(const Color.fromARGB(255, 134, 119, 95)),
//                 child: _buildButtonText('Travel whereever'),
//                 storyPages: [
//                   _createDummyPage(
//                     text: 'Get a loan',
//                     imageName: 'travel_1',
//                     addBottomBar: false,
//                   ),
//                   _createDummyPage(
//                     text: 'Select a place where you want to go',
//                     imageName: 'travel_2',
//                     addBottomBar: false,
//                   ),
//                   _createDummyPage(
//                     text: 'Dream about the place and pay our interest',
//                     imageName: 'travel_3',
//                     addBottomBar: false,
//                   ),
//                 ],
//                 segmentDuration: const Duration(seconds: 3),
//               ),
//               StoryButtonData(
//                 timelineBackgroundColor: Colors.orange,
//                 borderDecoration: _buildBorderDecoration(Colors.orange),
//                 buttonDecoration: _buildButtonDecoration('house'),
//                 child: _buildButtonText('Buy a house anywhere'),
//                 storyPages: [
//                   _createDummyPage(
//                     text: 'You cannot buy a house. Live with it',
//                     imageName: 'house',
//                   ),
//                 ],
//                 segmentDuration: const Duration(seconds: 5),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }