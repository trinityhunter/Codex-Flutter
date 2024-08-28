import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> task = [];

  final _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("To-Do App"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //  color: const Color.fromARGB(255, 255, 142, 142),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 400,
              // margin: EdgeInsets.only(top: 80),
              // color: Colors.amber,
              child: Container(
                child: ListView.builder(
                  itemCount: task.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(color: Colors.black, width: 2)
                        ),
                        child: Row(
                          children: [
                            Text(task[index]),
                            InkWell(
                                onTap: () {
                                  task.removeAt(index);
                                  setState(() {
                                    
                                  });
                                },
                                child: Icon(Icons.delete))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            // Expanded(child: Column(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Text("data")
            //   ],
            // ))
            Expanded(
              child: Container(
                height: 250,
                width: double.infinity,
                // color: Colors.red,
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextField(
                      controller: _taskController,
                      
                    ),
                    ElevatedButton(
                        onPressed: () {
                          task.add(_taskController.text);
                          setState(() {});
                        },
                        child: Text("Add Task"))
                  ],
                  
                ),
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
