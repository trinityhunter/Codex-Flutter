// import 'package:flutter/material.dart';
// import 'package:instagram/Accounts.dart';
// import 'package:instagram/InstagramStoryComponent.dart';
// import '../PostComponent.dart';

// class Mainpage extends StatelessWidget {
//   const Mainpage({super.key});

//   static Accounts a1 = Accounts("Tom Cruise", "images/TomCruise.jpeg");

//   static Accounts a2 = Accounts("Chris Evans", "images/ChrisEvans.jpeg");

//   static Accounts a3 = Accounts("Brad Pitt", "images/BradPitt.jpeg");

//   static Accounts a4 = Accounts("Eiza Gonzalez", "images/Eiza.jpg");

//   static List<Accounts> accounts = [
//     a1,
//     a2,
//     a3,
//     a4,
//     a1,
//     a2,
//     a3,
//     a4,
//     a1,
//     a2,
//     a3,
//     a4,
//     a1,
//     a2,
//     a3,
//     a4,
//     a1,
//     a2,
//     a3,
//     a4
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           title: Container(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Instagram",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 30,
//                       fontStyle: FontStyle.italic),
//                 ),
//                 Container(
//                   width: 100,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Icon(
//                         Icons.favorite_border_sharp,
//                         color: Colors.white,
//                         size: 30,
//                       ),
//                       Icon(
//                         Icons.message_outlined,
//                         color: Colors.white,
//                         size: 30,
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           // child: SingleChildScrollView(
//           //   child: Column(
//           //     children: [
//           //       Instagramstorycomponent(),
//           //       PostComponent(),
//           //       PostComponent(),
//           //       PostComponent(),
//           //       PostComponent(),
//           //       PostComponent(),
//           //       PostComponent(),
//           //       PostComponent(),
//           //       PostComponent(),
//           //       PostComponent(),
//           //       PostComponent(),
//           //       PostComponent(),
//           //       PostComponent(),
//           //     ],
//           //   ),
//           // )

//           child: ListView.builder(
//               itemCount: accounts.length,
//               itemBuilder: (context, index) {
//                 return PostComponent(
//                     name: accounts[index].name, imgUrl: accounts[index].imgUrl);
//               }),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/Accounts.dart';
import 'package:instagram/AddPostPage.dart';
import 'package:instagram/ExplorePage.dart';
import 'package:instagram/InstagramStoryComponent.dart';
import 'package:instagram/Messages.dart';
import 'package:instagram/PostComponent.dart';
import 'package:instagram/ProfilePage.dart';
import 'package:instagram/ReelsPage.dart';
import 'package:instagram/main.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  static List<StoryModel> s1 = [
    StoryModel("images/TomCruise.jpeg"),
    StoryModel("images/TomCruise.jpeg"),
    StoryModel("images/TomCruise.jpeg"),
  ];

  static List<StoryModel> s2 = [
    StoryModel("images/ChrisEvans.jpeg"),
    StoryModel("images/ChrisEvans.jpeg"),
    StoryModel("images/ChrisEvans.jpeg"),
  ];

  static List<StoryModel> s3 = [
    StoryModel("images/BradPitt.jpeg"),
    StoryModel("images/BradPitt.jpeg"),
    StoryModel("images/BradPitt.jpeg"),
  ];

  static List<StoryModel> s4 = [
    StoryModel("images/Eiza.jpg"),
    StoryModel("images/Eiza.jpg"),
    StoryModel("images/Eiza.jpg"),
  ];

  static UserModel u1 = UserModel(s1, "Tom Cruise", "images/TomCruise.jpeg");

  static UserModel u2 = UserModel(s2, "Chris Evans", "images/ChrisEvans.jpeg");

  static UserModel u3 = UserModel(s3, "Brad Pitt", "images/BradPitt.jpeg");

  static UserModel u4 = UserModel(s4, "Eiza Gonzalez", "images/TomCruise.jpg");

  static Accounts a1 = Accounts("Tom Cruise", "images/TomCruise.jpeg", u1);

  static Accounts a2 = Accounts("Chris Evans", "images/ChrisEvans.jpeg", u2);

  static Accounts a3 = Accounts("Brad Pitt", "images/BradPitt.jpeg", u3);

  static Accounts a4 = Accounts("Eiza Gonzalez", "images/Eiza.jpg", u4);

  static List<Accounts> accounts = [
    a1,
    a2,
    a3,
    a4,
    a1,
    a2,
    a3,
    a4,
    a1,
    a2,
    a3,
    a4,
    a1,
    a2,
    a3,
    a4,
    a1,
    a2,
    a3,
    a4
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text(
              //   "Instagram",
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 30,
              //       fontStyle: FontStyle.italic),
              // ),
              Container(
                height: 35,
                child: Image.asset(
                  "images/Instagram-logo.png",
                  color: Colors.white,
                ),
              ),
              Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      // Icons.favorite_border_sharp,
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                      size: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (Context) =>
                                    Messages(accounts: accounts)));
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          "images/chat.png",
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // child: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Instagramstorycomponent(),
        //       PostComponent(),
        //       PostComponent(),
        //       PostComponent(),
        //       PostComponent(),
        //       PostComponent(),
        //       PostComponent(),
        //       PostComponent(),
        //       PostComponent(),
        //       PostComponent(),
        //       PostComponent(),
        //       PostComponent(),
        //       PostComponent(),
        //     ],
        //   ),
        // )

        child: ListView.builder(
            itemCount: accounts.length,
            itemBuilder: (context, index) {
              return index > 0
                  ? PostComponent(
                      name: accounts[index].name,
                      imgUrl: accounts[index].imgUrl)
                  : Column(
                      children: [
                        Instagramstorycomponent(),
                        // Instagramstoryboard(name: accounts[index].name, imgUrl: accounts[index].imgUrl),
                        PostComponent(
                            name: accounts[index].name,
                            imgUrl: accounts[index].imgUrl)
                      ],
                    );
            }),

        // child: Instagramstoryboard(name: "Tom Cruise", imgUrl: "images/TomCruise.jpeg"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home,
              size: 40,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.search, size: 40),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset(
                "images/more.png",
                color: Colors.white,
              ),
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset(
                "images/video.png",
                color: Colors.white,
              ),
            ),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.person, size: 40),
            label: 'Profile',
          ),
        ],
        onTap: (value) {
          if (value == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (Context) => Explorepage()));
          } else if (value == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (Context) => Addpostpage()));
          }
          else if(value == 3){
            Navigator.push(context,
                MaterialPageRoute(builder: (Context) => Reelspage()));
          }
          else if(value == 4){
            Navigator.push(context,
                MaterialPageRoute(builder: (Context) => Profilepage(imgUrl: "images/ProfilePlaceholder.jpg", name: "ravirajbhosale22", isDefault: true,)));
          }
        },
      ),
    );
  }
}
