import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Container", style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 46, 60, 251),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 255, 195, 195),
        child: Center(
          child: Container(
            height: 300,
            width: 350,
            color: Colors.red,
            child: Center(
              child: Container(
                height: 250,
                width: 300,
                color: const Color.fromARGB(255, 108, 247, 113),
                child: Center(
                  child: Container(
                    height: 200,
                    width: 250,
                    child: Image.network("https://m.media-amazon.com/images/M/MV5BMGFhNDVhMjctMGE3NC00M2UwLWEwM2ItMzY4MTAzMDVkNTRhXkEyXkFqcGdeQXVyNDAzNDk0MTQ@._V1_QL75_UX1640_.jpg", fit: BoxFit.cover,),
                  ),
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
