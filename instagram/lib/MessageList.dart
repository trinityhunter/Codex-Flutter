import 'package:flutter/material.dart';
import 'package:instagram/Accounts.dart';
import 'package:instagram/DirectMessage.dart';

class Messagelist extends StatelessWidget {
  final List<Accounts> accounts;

  const Messagelist({super.key, required this.accounts});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: accounts.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (Context) => Directmessage(
                          name: accounts[index].name,
                          imgUrl: accounts[index].imgUrl)));
            },
            child: Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.only(left: 20, right: 20),
                margin: EdgeInsets.only(top: 10),
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                accounts[index].imgUrl,
                                fit: BoxFit.cover,
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              accounts[index].name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "4+ new messages · 1h",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "images/camera.png",
                        color: Colors.white,
                      ),
                    )
                  ],
                )),
          );
        },
      ),
    );
  }
}
