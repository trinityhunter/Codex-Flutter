import 'package:flutter/material.dart';
import 'package:instagram/Accounts.dart';
import 'package:instagram/StoryPage.dart';
import 'package:instagram/InstagramStoryCircularComponent.dart';
import 'package:instagram/main.dart';

class Instagramstorycomponent extends StatelessWidget {
  Instagramstorycomponent({super.key});

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
    return Container(
      height: 150,

      // child: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     children: [
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //       Instagramstorycircularcomponent(),
      //     ],
      //   ),
      // ),

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: accounts.length,
        itemBuilder: (context, index) {
          return index > 0
              // ? Instagramstoryboard(
              //     imgUrl: accounts[index].imgUrl, name: accounts[index].name)
              ? Instagramstorycircularcomponent(
                  imgUrl: accounts[index].imgUrl,
                  name: accounts[index].name,
                  userModel: accounts[index].userModel,
                  accounts: accounts.sublist(index),
                )
              : Row(
                  children: [
                    // Instagramstoryboard(
                    //     imgUrl: "images/ProfilePicPlaceholder.jpeg",
                    //     name: "Your Story"),
                    // Instagramstoryboard(
                    //     imgUrl: accounts[index].imgUrl,
                    //     name: accounts[index].name)
                    Instagramstorycircularcomponent(
                      imgUrl: "images/ProfilePlaceholder.jpg",
                      name: "Your Story",
                      userModel: accounts[3].userModel,
                      accounts: accounts.sublist(index),
                      isDefault: true,
                    ),
                    Instagramstorycircularcomponent(
                      imgUrl: accounts[index].imgUrl,
                      name: accounts[index].name,
                      userModel: accounts[index].userModel,
                      accounts: accounts.sublist(index),
                    )
                  ],
                );
        },
      ),
    );
  }
}
