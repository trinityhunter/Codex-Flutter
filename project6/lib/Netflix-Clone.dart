import 'package:flutter/material.dart';
import 'package:project6/Category_Horizontal_Component.dart';
class NetflixClone extends StatelessWidget {
  const NetflixClone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Container(
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow()
            // ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu_sharp, size: 40, color: Colors.white,),
              Container(
                height: 50,
                width: 200,
                child: Image.network("https://tse4.mm.bing.net/th?id=OIP.1-L7cLQDXCEAaTWu50bg1QHaCD&pid=Api&P=0&h=220", fit: BoxFit.cover,),
              ),
              Icon(Icons.search_sharp, size: 40, color: Colors.white)
            ],
          ),
        )
        
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(left: 20),
        color: Color.fromARGB(255, 14, 14, 14),
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
