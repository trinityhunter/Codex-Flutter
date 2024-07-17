import 'package:flutter/material.dart';
import 'package:project6/Category_Horizontal_Component.dart';
import 'package:project6/Movie_Image_Poster_Component.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Netflix",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 216, 31, 38),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(left: 20),
        color: Color.fromARGB(255, 255, 195, 195),
        // color: Colors.black,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoryHorizontalComponent(title: "Movies", imageUrls: ["https://tse4.mm.bing.net/th?id=OIP.WXGq0HLAXzFfqia4q6CjzAHaK-&pid=Api&P=0&h=220", "https://tse3.mm.bing.net/th?id=OIP.HmxzONhJOP9QiByXl22UhQHaK9&pid=Api&P=0&h=220", "https://tse4.mm.bing.net/th?id=OIP.6ep9j41DzFmgrHeOTwZaDQHaK9&pid=Api&P=0&h=220", "https://tse4.mm.bing.net/th?id=OIP.nJxvWnf5geLbJ0_wK6QNnwHaJQ&pid=Api&P=0&h=220", "https://tse4.mm.bing.net/th?id=OIP.gln9mqwQYhKorG5tAu_GLgHaLH&pid=Api&P=0&h=220", "https://tse4.mm.bing.net/th?id=OIP.gln9mqwQYhKorG5tAu_GLgHaLH&pid=Api&P=0&h=220", "https://tse4.mm.bing.net/th?id=OIP.gln9mqwQYhKorG5tAu_GLgHaLH&pid=Api&P=0&h=220", "https://tse4.mm.bing.net/th?id=OIP.gln9mqwQYhKorG5tAu_GLgHaLH&pid=Api&P=0&h=220", "https://tse4.mm.bing.net/th?id=OIP.gln9mqwQYhKorG5tAu_GLgHaLH&pid=Api&P=0&h=220", "https://tse4.mm.bing.net/th?id=OIP.gln9mqwQYhKorG5tAu_GLgHaLH&pid=Api&P=0&h=220", "https://tse4.mm.bing.net/th?id=OIP.gln9mqwQYhKorG5tAu_GLgHaLH&pid=Api&P=0&h=220", "https://tse4.mm.bing.net/th?id=OIP.gln9mqwQYhKorG5tAu_GLgHaLH&pid=Api&P=0&h=220", "https://tse4.mm.bing.net/th?id=OIP.gln9mqwQYhKorG5tAu_GLgHaLH&pid=Api&P=0&h=220"]),
          
              CategoryHorizontalComponent(title: "Web Series", imageUrls: ["https://tse1.mm.bing.net/th?id=OIP.onTqxJXopC-Twdm1FntQQwHaK-&pid=Api&P=0&h=220", "https://tse2.mm.bing.net/th?id=OIP.xX9hWMhHRY_hqDpUhx72KAHaJ4&pid=Api&P=0&h=220", "https://tse4.mm.bing.net/th?id=OIP.Pj4aJLBj7Fbrltj0-HurIgHaK-&pid=Api&P=0&h=220", "https://tse3.mm.bing.net/th?id=OIP.EgQ_3TwrESsTcxcOCJXaFwHaK9&pid=Api&P=0&h=220", "https://tse3.mm.bing.net/th?id=OIP.EgQ_3TwrESsTcxcOCJXaFwHaK9&pid=Api&P=0&h=220", "https://tse3.mm.bing.net/th?id=OIP.EgQ_3TwrESsTcxcOCJXaFwHaK9&pid=Api&P=0&h=220", "https://tse3.mm.bing.net/th?id=OIP.EgQ_3TwrESsTcxcOCJXaFwHaK9&pid=Api&P=0&h=220", "https://tse3.mm.bing.net/th?id=OIP.EgQ_3TwrESsTcxcOCJXaFwHaK9&pid=Api&P=0&h=220", "https://tse3.mm.bing.net/th?id=OIP.EgQ_3TwrESsTcxcOCJXaFwHaK9&pid=Api&P=0&h=220", "https://tse3.mm.bing.net/th?id=OIP.EgQ_3TwrESsTcxcOCJXaFwHaK9&pid=Api&P=0&h=220", "https://tse3.mm.bing.net/th?id=OIP.EgQ_3TwrESsTcxcOCJXaFwHaK9&pid=Api&P=0&h=220"]),
          
              CategoryHorizontalComponent(title: "Popular Content", imageUrls: ["https://tse4.mm.bing.net/th?id=OIP.nLAjpufKVTiBMBbSwZEn8wHaJ1&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.GdVZfbLnHsWngwbOD2L_iwHaK-&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.O_1p_T7eOh3oiSmluA0vAAHaJQ&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.O_1p_T7eOh3oiSmluA0vAAHaJQ&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.O_1p_T7eOh3oiSmluA0vAAHaJQ&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.O_1p_T7eOh3oiSmluA0vAAHaJQ&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.O_1p_T7eOh3oiSmluA0vAAHaJQ&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.O_1p_T7eOh3oiSmluA0vAAHaJQ&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.O_1p_T7eOh3oiSmluA0vAAHaJQ&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.O_1p_T7eOh3oiSmluA0vAAHaJQ&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.O_1p_T7eOh3oiSmluA0vAAHaJQ&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.O_1p_T7eOh3oiSmluA0vAAHaJQ&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.O_1p_T7eOh3oiSmluA0vAAHaJQ&pid=Api&P=0&h=220", "https://tse1.mm.bing.net/th?id=OIP.O_1p_T7eOh3oiSmluA0vAAHaJQ&pid=Api&P=0&h=220"])
            ],
            
          ),
        ),
      ),
    );
  }
}
