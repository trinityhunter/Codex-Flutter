import 'package:flutter/material.dart';

class ContainerImages extends StatelessWidget {
  const ContainerImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      margin: EdgeInsets.only(top: 10),
      child: Image.network(
          "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
    );
  }
}
