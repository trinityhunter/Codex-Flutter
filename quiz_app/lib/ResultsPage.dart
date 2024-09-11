import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/StartPage.dart';
import 'package:quiz_app/UserModel.dart';
import 'dart:convert';

class ResultsPage extends StatefulWidget {
  final int score;
  final String playerName;
  final UserModel user;

  const ResultsPage({
    required this.score,
    required this.playerName,
    required this.user,
  });

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  Future<void> addScore() async {
    try {
      final response = await http.put(
        Uri.parse('http://10.0.2.2:8080/api/addScore'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "user": widget.user.toJson(),
          "score": widget.score,
        }),
      );

      if (response.statusCode == 200 || response.statusCode == 204) {
        print('Score added successfully.');
      } else {
        print('Failed to add score. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e, stackTrace) {
      print('Error occurred while adding score: $e');
      print('Stack trace: $stackTrace');
    }
  }

  @override
  void initState() {
    super.initState();
    addScore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Results"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Congratulations, ${widget.playerName}!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Your Score: ${widget.score}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StartPage(user: widget.user),
                      ));
                },
                child: Text('Back to Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
