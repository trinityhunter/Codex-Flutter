import 'package:flutter/material.dart';
import 'package:instagram/ProfilePage.dart';

class PostComponent extends StatefulWidget {
  final String name;
  final String imgUrl;

  const PostComponent({super.key, required this.name, required this.imgUrl});

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

  bool bookmarked = false;

  void handleBookmark() {
    setState(() {
      bookmarked = !bookmarked;
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
            // const SizedBox(
            //   height: 10,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (Context) => Profilepage(
                                      name: widget.name,
                                      imgUrl: widget.imgUrl,
                                    )));
                      },
                      child: Container(
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
                            child: Image.asset(
                              widget.imgUrl,
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (Context) => Profilepage(
                                          name: widget.name,
                                          imgUrl: widget.imgUrl,
                                        )));
                          },
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  widget.name,
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
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
            // const SizedBox(
            //   height: 10,
            // ),
            InkWell(
              onDoubleTap: handleLike,
              child: Container(
                height: 400,
                width: double.infinity,
                color: const Color.fromARGB(255, 224, 112, 150),
                child: Image.asset(
                  widget.imgUrl,
                  fit: BoxFit.fitWidth,
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
                    Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "images/chat-2.png",
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      child:
                          Image.asset("images/send.png", color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: handleBookmark,
                      child: Icon(
                        bookmarked
                            ? Icons.bookmark
                            : Icons.bookmark_border_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
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
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      " Explained ⬇️ ... more",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                )),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 10),
              margin: EdgeInsets.only(bottom: 20),
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
