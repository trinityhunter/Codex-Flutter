import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quiz_app/LoginScreen.dart';
import 'package:quiz_app/ProfileDetail.dart';
import 'package:quiz_app/ProfileHeader.dart';

class ProfilePage extends StatefulWidget {
  final String userEmail;

  ProfilePage({required this.userEmail});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Map<String, dynamic> userData = {};
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchUserProfile();
  }

  Future<void> fetchUserProfile() async {
    try {
      final response = await http
          .get(Uri.parse('http://10.0.2.2:8080/api/user/${widget.userEmail}'));
      debugPrint(response.body);
      if (response.statusCode == 200) {
        setState(() {
          userData = jsonDecode(response.body);
          isLoading = false;
        });
      } else {
        print('Failed to load user profile');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }

  void logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Loginscreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
        // backgroundColor: Colors.blueAccent,
        backgroundColor: Color.fromRGBO(44, 55, 149, 0.67),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: logout, // Call the logout function
          ),
        ],
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileHeader(
                      name: userData['name'], email: userData['email']),
                  SizedBox(height: 20),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ProfileDetail(title: 'Name', value: userData['name']),
                          Divider(),
                          ProfileDetail(
                              title: 'Email', value: userData['email']),
                          Divider(),
                          ProfileDetail(
                              title: 'Total Quizzes Taken',
                              value: '${userData['scores'].length}'),
                          Divider(),
                          ProfileDetail(
                              title: 'High Score',
                              value: '${userData['highScore']}'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Scores History',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListView.builder(
                        itemCount: userData['scores']?.length ?? 0,
                        itemBuilder: (context, index) {
                          return ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text('Quiz ${index + 1}',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text(
                                'Score: ${userData['scores'][index]}',
                                style: TextStyle(color: Colors.black54)),
                            trailing: Icon(Icons.assessment,
                                color: Colors.blueAccent),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
