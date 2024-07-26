import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Screen 2",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFFB55656)
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFF3D3939),
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Andrew Rublin",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Container(
                height: 500,
                width: 400,
                child: Image.asset(
                  "images/Frame4.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  // width: 350,
                  child: Text(
                    "Andrew E. Rubin (born March 13, 1963) is an American computer programmer, entrepreneur, and venture capitalist. Rubin founded Android Inc. in 2003, which was acquired by Google in 2005; Rubin served as a Google vice president for nine years and led Google's efforts in creating and promoting the Android operating system for mobile phones and other devices during most of his tenure. Rubin left Google in 2014 after allegations of sexual misconduct,  although it was presented as a voluntary departure rather than a  dismissal at first. Rubin then served as co-founder and CEO of venture  capital firm Playground Global from 2015 to 2019.[1] Rubin also helped found Essential Products  in 2015, a mobile phone start-up that closed in 2020 without finding a  buyer. In 2019, Rubin was inducted into the Wireless Hall of Fame.[2]",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
