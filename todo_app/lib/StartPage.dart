import 'package:flutter/material.dart'; 

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('TableCalendar Example'),
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [

      //       const SizedBox(height: 12.0),
      //       ElevatedButton(
      //         child: Text('Events'),
      //         onPressed: () => Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (_) => TableEventsExample()),
      //         ),
      //       ),

      //     ],
      //   ),
      // ),
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            margin: EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                ),
                Text(
                  "Index",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.photo,
                  size: 30,
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: 350,
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 92, 92, 92),

                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 225,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        hintText: "Message...",
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none),
                    cursorColor: Colors.white,
                  ),
                ),
                Text(
                  "Send",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 216, 0, 205)),
                )
              ],
            ),
          ),
          Text("Today", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          
        ],
      ),
    );
  }
}
