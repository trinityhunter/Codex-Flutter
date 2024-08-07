import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/DirectMessage.dart';
import 'package:instagram/ProfilePosts.dart';

class Profilepage extends StatefulWidget {
  final String name;

  final String imgUrl;

  final bool? isDefault;

  const Profilepage(
      {super.key, required this.name, required this.imgUrl, this.isDefault});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  bool isFollowed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        FontAwesomeIcons.arrowLeftLong,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      widget.name,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        "images/verify.png",
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          )),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // border: Border.all(
                        //   color: Colors.purple,
                        //   width: 4,
                        // ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          widget.imgUrl,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Column(
                    children: [
                      Text(
                        widget.isDefault == null ? "80" : "13",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "posts",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(widget.isDefault == null ? "12.3M" : "237",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(
                        "followers",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(widget.isDefault == null ? "58" : "235",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(
                        "following",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    widget.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
              Container(
                padding: EdgeInsets.only(left: 30),
                margin: EdgeInsets.only(top: 3, bottom: 20),
                child: Text(
                  widget.isDefault == null
                      ? "Actor. Producer. Running in movies since 1981."
                      : "Hustling",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      isFollowed = !isFollowed;
                      setState(() {});
                    },
                    child: widget.isDefault == null
                        ? Container(
                            height: 35,
                            width: 155,
                            margin: EdgeInsets.only(left: 30),
                            decoration: BoxDecoration(
                                color: isFollowed
                                    ? Color.fromARGB(255, 47, 47, 47)
                                    : Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                !isFollowed ? "Follow" : "Following",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        : Container(
                            height: 35,
                            width: 155,
                            margin: EdgeInsets.only(left: 30),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 47, 47, 47),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Edit profile",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                  ),
                  InkWell(
                    onTap: () {
                      widget.isDefault == null
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (Context) => Directmessage(
                                        name: widget.name,
                                        imgUrl: widget.imgUrl,
                                      )))
                          : () {};
                    },
                    child: Container(
                      height: 35,
                      width: 155,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 47, 47, 47),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          widget.isDefault == null
                              ? "Message"
                              : "Share profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 47, 47, 47),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Icon(
                      FontAwesomeIcons.userPlus,
                      color: Colors.white,
                      size: 18,
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "images/menu.png",
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "images/video.png",
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "images/tag.png",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Profileposts(imgUrl: widget.imgUrl),
              Profileposts(imgUrl: widget.imgUrl),
              Profileposts(imgUrl: widget.imgUrl),
              Profileposts(imgUrl: widget.imgUrl),
              Profileposts(imgUrl: widget.imgUrl),
              Profileposts(imgUrl: widget.imgUrl),
              Profileposts(imgUrl: widget.imgUrl),
              Profileposts(imgUrl: widget.imgUrl),
              Profileposts(imgUrl: widget.imgUrl),
              Profileposts(imgUrl: widget.imgUrl),
            ],
          ),
        ),
      ),
    );
  }
}
