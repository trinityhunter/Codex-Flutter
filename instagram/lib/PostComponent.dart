import 'package:flutter/material.dart';

class Postcomponent extends StatelessWidget {
  const Postcomponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 70,
                        width: 70,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.purple,
                            width: 4,
                          ),
                        ),
                        child: ClipOval(
                          child: Image.network(
                            "https://image.tmdb.org/t/p/original/w2pZ8gLqZNguj8cqrDGbMw2Ibj0.jpg",
                            fit: BoxFit.cover,
                          ),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "apple",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        const Text(
                          "Sponsored",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
                Icon(Icons.more_vert, color: Colors.white, size: 30,)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 400,
              color: const Color.fromARGB(255, 224, 112, 150),
              child: Image.network(
                "https://tse2.mm.bing.net/th?id=OIP.bz3JOitzMOIgDIVYprTGvwHaF7&pid=Api&P=0&h=220",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.comment_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.send,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.bookmark_outline,
                      size: 40,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 20),
              child: Text(
                "27,989 likes",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    Text(
                      "apple ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Explained ⬇️ ... more",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "19 hours ago",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
