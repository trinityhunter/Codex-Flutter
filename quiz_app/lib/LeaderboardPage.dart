import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LeaderboardPage extends StatefulWidget {
  @override
  _LeaderboardPageState createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  List<dynamic> leaderboard = [];

  @override
  void initState() {
    super.initState();
    fetchLeaderboard();
  }

  Future<void> fetchLeaderboard() async {
    try {
      final response =
          await http.get(Uri.parse('http://10.0.2.2:8080/api/leaderboard'));
      if (response.statusCode == 200) {
        setState(() {
          leaderboard = jsonDecode(response.body);
        });
      } else {
        print('Failed to load leaderboard');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(44, 55, 149, 0.67),
        title: Text('Leaderboard'),
      ),
      body: leaderboard.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: leaderboard.length,
                itemBuilder: (context, index) {
                  final user = leaderboard[index];
                  return LeaderboardTile(
                    name: user['name'],
                    score: user['highScore'],
                    rank: index + 1,
                  );
                },
              ),
            ),
    );
  }
}

class LeaderboardTile extends StatelessWidget {
  final String name;
  final int score;
  final int rank;

  LeaderboardTile(
      {required this.name, required this.score, required this.rank});

  @override
  Widget build(BuildContext context) {
    bool isTop3 = rank <= 3;
    Color rankColor;
    IconData rankIcon = Icons.emoji_events;

    switch (rank) {
      case 1:
        rankIcon = Icons.emoji_events_outlined;
        rankColor = Colors.amber[700]!;
        break;
      case 2:
        rankIcon = Icons.emoji_events;
        rankColor = Colors.grey;
        break;
      case 3:
        rankIcon = Icons.emoji_events;
        rankColor = Colors.brown;
        break;
      default:
        rankColor = Colors.white;
    }

    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      color: isTop3 ? rankColor : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: isTop3
            ? CircleAvatar(
                backgroundColor: rankColor,
                child: Icon(rankIcon, color: Colors.white),
              )
            : CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text('$rank'),
              ),
        title: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: isTop3 ? 20 : 16,
            color: isTop3 ? Colors.white : Colors.black,
          ),
        ),
        subtitle: Text(
          'Score: $score',
          style: TextStyle(
            color: isTop3 ? Colors.white70 : Colors.black54,
          ),
        ),
      ),
    );
  }
}
