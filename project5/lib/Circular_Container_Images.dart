import 'package:flutter/material.dart';

class CircularContainerImages extends StatelessWidget {
  const CircularContainerImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.network(
          "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}