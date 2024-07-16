import 'package:flutter/material.dart';

class Instagrampostcomponent extends StatelessWidget {
  const Instagrampostcomponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(left: 10, top: 30),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 242, 197, 17),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      border: Border.all(color: Colors.black, width: 2)),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "TEXT",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                height: 400,
                color: const Color.fromARGB(255, 224, 112, 150),
                child: Image.network("https://image.tmdb.org/t/p/original/w2pZ8gLqZNguj8cqrDGbMw2Ibj0.jpg", fit: BoxFit.fill,),
                ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.favorite_border,
                  size: 50,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "TEXT",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.message_outlined,
                  size: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
