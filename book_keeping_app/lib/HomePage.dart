import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _nameController = TextEditingController();

  final _authorController = TextEditingController();

  List _books = [];

  Future<void> fetchBooks() async {
    final url = Uri.parse('http://10.0.2.2:8080/getBooks');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        _books = json.decode(response.body);
      });
    } else {
      setState(() {
        _books = [];
      });
      print('Failed to load books');
    }
  }

  Future<void> handleAddBook() async {
    final url = Uri.parse('http://10.0.2.2:8080/addBook');

    Map<String, dynamic> bookData = {
      "name": _nameController.text,
      "author": _authorController.text,
    };

    final response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
      },
      body: json.encode(bookData),
    );

    if (response.statusCode == 200) {
      fetchBooks();
      setState(() {
        _nameController.clear();
        _authorController.clear();
      });
    } else {
      print('Failed to add book');
    }
  }

  Future<void> handleDeleteBook(int id) async {
    final url = Uri.parse('http://10.0.2.2:8080/$id');

    final response = await http.delete(url);

    if (response.statusCode == 200) {
      fetchBooks();
    } else {
      print('Failed to delete book');
    }
  }

  void _showDeleteAlertDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Book'),
          content: Text('Are you sure you want to delete this book?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                handleDeleteBook(_books[index]["id"]);
                Navigator.of(context).pop();
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _showValidateAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Book'),
          content: Text('Please Enter a Valid Name and Author'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Book Keeping"),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: 291,
            margin: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1)),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                filled: true,
                fillColor: Colors.white,
                hintText: "Book Name",
                hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 291,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1)),
            child: TextField(
              controller: _authorController,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                filled: true,
                fillColor: Colors.white,
                hintText: "Author",
                hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _nameController.text.length == 0 ||
                      _authorController.text.length == 0
                  ? _showValidateAlertDialog(context)
                  : handleAddBook();
            },
            child: Text("Add Book"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _books.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          _showDeleteAlertDialog(context, index);
                        },
                        child: Icon(Icons.delete),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Center(
                            child: Text(
                                "${_books[index]["name"]} by ${_books[index]["author"]}")),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}