import 'package:flutter/material.dart';
import 'package:project7/Mycontainer.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 10,
          // scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Mycontainer(imgUrl: "https://cdn-3.expansion.mx/dims4/default/8e6120c/2147483647/strip/true/crop/1080x1350+0+0/resize/1800x2250!/quality/90/?url=https://cdn-3.expansion.mx/03/0d/3b4f0a3241cd9f2b0d3b09a53333/70257865-122108265808183-5517777964248409765-n.jpg",);
          }),
    );
  }
}
