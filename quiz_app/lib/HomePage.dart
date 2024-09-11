import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:html_unescape/html_unescape.dart';

import 'ResultsPage.dart';

class Homepage extends StatefulWidget {
  final String playerName;
  final String difficulty;
  final String category;
  final user;

  const Homepage(
      {super.key,
      required this.playerName,
      required this.difficulty,
      required this.category,
      required this.user});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Map<String, dynamic> questions = {};
  int currentQuestionIndex = 0;
  int score = 0;
  String selectedAnswer = "";
  bool answered = false;
  List<String> shuffledAnswers = [];

  Future<void> fetchQuestions() async {
    final url = Uri.parse(
        "https://opentdb.com/api.php?amount=10&category=${widget.category}&difficulty=${widget.difficulty}&type=multiple");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        questions = json.decode(response.body);
        shuffleAnswers();
      });
    } else {
      setState(() {
        questions = {};
      });
      print('Failed to load questions');
    }
  }

  void shuffleAnswers() {
    var question = questions["results"][currentQuestionIndex];
    shuffledAnswers = [
      ...question["incorrect_answers"],
      question["correct_answer"]
    ];
    shuffledAnswers.shuffle();
  }

  void moveToNextQuestion() {
    if (currentQuestionIndex < questions["results"].length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedAnswer = "";
        answered = false;
        shuffleAnswers();
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResultsPage(
                  score: score,
                  playerName: widget.playerName,
                  user: widget.user,
                )),
      );
    }
  }

  void checkAnswer(String answer) {
    setState(() {
      selectedAnswer = answer;
      answered = true;

      var correctAnswer =
          questions["results"][currentQuestionIndex]["correct_answer"];
      if (answer == correctAnswer) {
        score += 10;
      }

      Future.delayed(Duration(seconds: 1), () {
        moveToNextQuestion();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    fetchQuestions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Quiz App"),
        backgroundColor: Colors.blue,
      ),
      body: questions.isEmpty
          ? Center(child: CircularProgressIndicator())
          : buildQuestionCard(),
    );
  }

  Widget buildQuestionCard() {
    var unescape = HtmlUnescape();
    var question = questions["results"][currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 8.0,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FAProgressBar(
                currentValue: (currentQuestionIndex + 1) * 10,
                displayText: "%",
                size: 50,
                progressColor: Colors.blueAccent,
                backgroundColor: Colors.grey[300]!,
                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: 40),
              Center(
                child: Text(
                  unescape.convert(question["question"]),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: shuffledAnswers.map((answer) {
                  Color buttonColor = Colors.blue;
                  if (answered) {
                    if (answer == question["correct_answer"]) {
                      buttonColor = Colors.green;
                    } else if (answer == selectedAnswer) {
                      buttonColor = Colors.red;
                    }
                  }

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      onPressed: () => checkAnswer(answer),
                      child: Text(
                        unescape.convert(answer),
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
