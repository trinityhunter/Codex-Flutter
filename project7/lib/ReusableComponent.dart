import 'package:flutter/material.dart';
import 'package:project7/Mycontainer.dart';

class Reusablecomponent extends StatelessWidget {
  const Reusablecomponent({super.key});

  Widget function(){
    return Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.all(20),
      color: Colors.red,
    ); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reusable Containers"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              function(),
              Mycontainer(imgUrl: "https://cdn-3.expansion.mx/dims4/default/8e6120c/2147483647/strip/true/crop/1080x1350+0+0/resize/1800x2250!/quality/90/?url=https://cdn-3.expansion.mx/03/0d/3b4f0a3241cd9f2b0d3b09a53333/70257865-122108265808183-5517777964248409765-n.jpg",),
              Mycontainer(imgUrl: "https://cdn-3.expansion.mx/dims4/default/8e6120c/2147483647/strip/true/crop/1080x1350+0+0/resize/1800x2250!/quality/90/?url=https://cdn-3.expansion.mx/03/0d/3b4f0a3241cd9f2b0d3b09a53333/70257865-122108265808183-5517777964248409765-n.jpg",),
              Mycontainer(imgUrl: "https://cdn-3.expansion.mx/dims4/default/8e6120c/2147483647/strip/true/crop/1080x1350+0+0/resize/1800x2250!/quality/90/?url=https://cdn-3.expansion.mx/03/0d/3b4f0a3241cd9f2b0d3b09a53333/70257865-122108265808183-5517777964248409765-n.jpg",),
              Mycontainer(imgUrl: "https://cdn-3.expansion.mx/dims4/default/8e6120c/2147483647/strip/true/crop/1080x1350+0+0/resize/1800x2250!/quality/90/?url=https://cdn-3.expansion.mx/03/0d/3b4f0a3241cd9f2b0d3b09a53333/70257865-122108265808183-5517777964248409765-n.jpg",),
              Mycontainer(imgUrl: "https://cdn-3.expansion.mx/dims4/default/8e6120c/2147483647/strip/true/crop/1080x1350+0+0/resize/1800x2250!/quality/90/?url=https://cdn-3.expansion.mx/03/0d/3b4f0a3241cd9f2b0d3b09a53333/70257865-122108265808183-5517777964248409765-n.jpg",),
              Mycontainer(imgUrl: "https://cdn-3.expansion.mx/dims4/default/8e6120c/2147483647/strip/true/crop/1080x1350+0+0/resize/1800x2250!/quality/90/?url=https://cdn-3.expansion.mx/03/0d/3b4f0a3241cd9f2b0d3b09a53333/70257865-122108265808183-5517777964248409765-n.jpg",),
              Mycontainer(imgUrl: "https://cdn-3.expansion.mx/dims4/default/8e6120c/2147483647/strip/true/crop/1080x1350+0+0/resize/1800x2250!/quality/90/?url=https://cdn-3.expansion.mx/03/0d/3b4f0a3241cd9f2b0d3b09a53333/70257865-122108265808183-5517777964248409765-n.jpg",),
              Mycontainer(imgUrl: "https://cdn-3.expansion.mx/dims4/default/8e6120c/2147483647/strip/true/crop/1080x1350+0+0/resize/1800x2250!/quality/90/?url=https://cdn-3.expansion.mx/03/0d/3b4f0a3241cd9f2b0d3b09a53333/70257865-122108265808183-5517777964248409765-n.jpg",),
              Mycontainer(imgUrl: "https://cdn-3.expansion.mx/dims4/default/8e6120c/2147483647/strip/true/crop/1080x1350+0+0/resize/1800x2250!/quality/90/?url=https://cdn-3.expansion.mx/03/0d/3b4f0a3241cd9f2b0d3b09a53333/70257865-122108265808183-5517777964248409765-n.jpg",),
            ],
          ),
        ),
      ),
    );
  }
}
