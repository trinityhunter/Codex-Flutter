import 'package:flutter/material.dart';
import 'package:quiz_app/HomePage.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:quiz_app/LeaderboardPage.dart';
import 'package:quiz_app/ProfilePage.dart';

class StartPage extends StatefulWidget {
  final user;

  const StartPage({super.key, required this.user});

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  late TextEditingController _nameController;

  String? selectedDifficulty;
  String? selectedCategory;
  int _selectedTabIndex = 0;

  final List<String> difficulties = ["easy", "medium", "hard"];
  final Map<String, String> categories = {
    "Sports": "21",
    "History": "23",
    "Politics": "24",
    "Art": "25",
    "Science: Computers": "18",
  };

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.user.name);
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void startQuiz() {
    if (_nameController.text.isNotEmpty &&
        selectedDifficulty != null &&
        selectedCategory != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Homepage(
            playerName: _nameController.text,
            difficulty: selectedDifficulty!,
            category: selectedCategory!,
            user: widget.user,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in all fields')),
      );
    }
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      _buildStartPageContent(),
      LeaderboardPage(),
      ProfilePage(userEmail: widget.user.email),
    ];

    return Scaffold(
      body: _pages[_selectedTabIndex],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.leaderboard, title: 'Leaderboard'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: _selectedTabIndex,
        onTap: _onTabTapped,
        backgroundColor: Color.fromRGBO(44, 55, 149, 0.67),
      ),
    );
  }

  Widget _buildStartPageContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.only(top: 70),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Hello, ${widget.user.name}",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    "Let's Take a Quiz",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          DropdownButtonFormField<String>(
            value: selectedDifficulty,
            hint: Text('Select Difficulty'),
            items: difficulties.map((String difficulty) {
              return DropdownMenuItem<String>(
                value: difficulty,
                child: Text(difficulty.capitalize()),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedDifficulty = value!;
              });
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          DropdownButtonFormField<String>(
            value: selectedCategory,
            hint: Text('Select Category'),
            items: categories.entries.map((entry) {
              return DropdownMenuItem<String>(
                value: entry.value,
                child: Text(entry.key),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedCategory = value!;
              });
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: startQuiz,
            child: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}

extension StringCasingExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
