import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Directmessage extends StatefulWidget {
  final String name;

  final String imgUrl;

  const Directmessage({super.key, required this.name, required this.imgUrl});

  @override
  State<Directmessage> createState() => _DirectmessageState();
}

class _DirectmessageState extends State<Directmessage> {
  final _nameController = TextEditingController();

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
                      width: 20,
                    ),
                    Container(
                        height: 40,
                        width: 40,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.name,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 15,
                              width: 15,
                              child: Image.asset(
                                "images/verify.png",
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                        Text(
                          widget.name,
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        )
                      ],
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                        child: Image.asset(
                      widget.imgUrl,
                      fit: BoxFit.cover,
                    )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Instagram · ",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        widget.name,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "1.2Cr followers · ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 157, 157, 157)),
                      ),
                      Text(
                        "80 posts",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 157, 157, 157)),
                      ),
                    ],
                  ),
                  Text(
                    "You don't follow each other on Instagram",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 157, 157, 157)),
                  )
                ],
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 350,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 92, 92, 92),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 225,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              hintText: "Message...",
                              hintStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none),
                          cursorColor: Colors.white,
                        ),
                      ),
                      Text(
                        "Send",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 216, 0, 205)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
