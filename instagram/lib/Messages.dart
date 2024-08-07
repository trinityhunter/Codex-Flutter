import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/Accounts.dart';
import 'package:instagram/MessageList.dart';

class Messages extends StatefulWidget {
  final List<Accounts> accounts;

  const Messages({super.key, required this.accounts});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
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
                      "ravirajbhosale22",
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
        child: Column(
          children: [
            Container(
              height: 40,
              width: 360,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 60, 60, 60),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 250,
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      decoration: InputDecoration(
                          hintText: "Search",
                          iconColor: Colors.white,
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Requests",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Messagelist(accounts: widget.accounts)
          ],
        ),
      ),
    );
  }
}
