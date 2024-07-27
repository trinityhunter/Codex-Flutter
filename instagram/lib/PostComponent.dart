import 'package:flutter/material.dart';

class PostComponent extends StatefulWidget {
  const PostComponent({super.key});

  @override
  State<PostComponent> createState() => _PostComponentState();
}

class _PostComponentState extends State<PostComponent> {
  bool liked = false;

  void handleLike() {
    setState(() {
      liked = !liked;
    });
  }

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
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onDoubleTap: handleLike,
              child: Container(
                height: 400,
                color: const Color.fromARGB(255, 224, 112, 150),
                child: Image.network(
                  "https://tse2.mm.bing.net/th?id=OIP.bz3JOitzMOIgDIVYprTGvwHaF7&pid=Api&P=0&h=220",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: handleLike,
                      child: Icon(
                        liked ? Icons.favorite : Icons.favorite_border,
                        size: 40,
                        color: liked ? Colors.red : Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.comment_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.send,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: const [
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
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: const Text(
                "27,989 likes",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: const [
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
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: const Text(
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
