import 'package:flutter/material.dart';
import 'package:project5/Container_Images.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile Screen Scrollable",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 219, 219),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: BorderDirectional(bottom: BorderSide(width: 2))),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "James Gosling",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text("Founder Java")
                      ],
                    )
                  ],
                ),
              ),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
            ],
          ),
        ),
      ),
    );
  }
}
