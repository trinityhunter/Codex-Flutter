import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "ListView",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                color: Colors.amber,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.purple,
                          width: 5,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          "images/TomCruise.jpeg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              ),
              ListView.builder(
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 370,
                    color: Colors.blue,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      border: Border.all(color: Colors.purple),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                ),
                                Text("Name")
                              ],
                            ),
                            Icon(Icons.more_vert)
                          ],
                        ),
                        Container(
                          height: 200,
                          width: double.infinity,
                          margin: EdgeInsets.all(20),
                          color: Colors.white,
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 150,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.favorite),
                                    Icon(Icons.message),
                                    Icon(Icons.send)
                                  ],
                                ),
                              ),
                              Icon(Icons.bookmark)
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}
