import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'DetailPage.dart';
import 'USerModel.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool loading = true;
  List myData = [];

  Future<void> fetchData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/users");

    var response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        loading = false;
        myData = json.decode(response.body);
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('User List'),
        backgroundColor: Colors.teal,
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: myData.length,
              padding: const EdgeInsets.all(10.0),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Text(
                        myData[index]["name"][0],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    title: Text(
                      myData[index]["name"],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(myData[index]["email"]),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detailpage(
                            user: UserModel(
                              id: myData[index]["id"],
                              name: myData[index]["name"],
                              username: myData[index]["username"],
                              email: myData[index]["email"],
                              address: myData[index]["address"],
                              phone: myData[index]["phone"],
                              website: myData[index]["website"],
                              company: myData[index]["company"],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
