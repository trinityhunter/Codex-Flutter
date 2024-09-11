import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:quiz_app/StartPage.dart';
import 'package:quiz_app/UserModel.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isSignup = false;

  bool isPasswordVisible = false;

  final String baseUrl = 'http://10.0.2.2:8080/api/auth';

  Future<String?> handleSignup() async {
    if (_emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _usernameController.text.isEmpty) {
      return "Enter Details";
    }
    print("in signup");
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/signup'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'name': _usernameController.text,
          'email': _emailController.text,
          'password': _passwordController.text,
        }),
      );

      debugPrint(response.body);

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final user = UserModel.fromJson(responseData);

        print('User Name: ${user.name}');
        print('Token: ${user.token}');
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StartPage(
                user: user,
              ),
            ));
        return 'Signup successful';
      } else {
        final error = jsonDecode(response.body)['error'] ?? 'Signup failed';
        return error;
      }
    } catch (e) {
      return 'An error occurred: $e';
    }
  }

  Future<String?> handleLogin() async {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      return "Enter Details";
    }

    try {
      final response = await http.post(
        Uri.parse('$baseUrl/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': _emailController.text,
          'password': _passwordController.text,
        }),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final user = UserModel.fromJson(responseData);

        print('User Name: ${user.name}');
        print('Token: ${user.token}');

        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => StartPage(
                    user: user,
                  )),
        );

        return 'Login successful';
      } else {
        final error = jsonDecode(response.body)['error'] ?? 'Login failed';
        return error;
      }
    } catch (e) {
      return 'An error occurred: $e';
    }
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    bool isPassword = false,
  }) {
    return Container(
      height: 50,
      width: 291,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              spreadRadius: 1,
            )
          ]),
      child: TextField(
        controller: controller,
        obscureText: isPassword && !isPasswordVisible,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(icon, color: Colors.grey),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                )
              : null,
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          hintStyle: GoogleFonts.anekTamil(
              fontWeight: FontWeight.w400, fontSize: 15, color: Colors.grey),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 320,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 55, 149, 0.67),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(157.5))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Text(
                        isSignup ? "Join Us" : "Welcome Back",
                        style: GoogleFonts.jost(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w400),
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 40, top: 20),
                      child: Text(
                        isSignup
                            ? "Create an account to get started"
                            : "Please log in to continue",
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      )),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                _buildTextField(
                    controller: _emailController,
                    hint: 'Email',
                    icon: Icons.email),
                _buildTextField(
                    controller: _passwordController,
                    hint: 'Password',
                    icon: Icons.lock,
                    isPassword: true),
                if (isSignup)
                  _buildTextField(
                      controller: _usernameController,
                      hint: 'Username',
                      icon: Icons.person),
                !isSignup
                    ? Text(
                        "Forgot password?",
                        style: GoogleFonts.anekTamil(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8E8E93)),
                      )
                    : Container(),
                Container(
                  height: 40,
                  width: 291,
                  margin: EdgeInsets.only(top: 50, bottom: 50),
                  decoration: BoxDecoration(
                      color: Color(0xff6371F2),
                      borderRadius: BorderRadius.all(Radius.circular(659))),
                  child: InkWell(
                    onTap: () {
                      isSignup ? handleSignup() : handleLogin();
                    },
                    child: Center(
                        child: Text(
                      isSignup ? "Sign Up" : "Login",
                      style: GoogleFonts.anekTamil(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      isSignup
                          ? "Already have an account?"
                          : "Don't have an account?",
                      style: GoogleFonts.anekTamil(
                          fontSize: 13, color: Color(0xff8E8E93)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isSignup = !isSignup;
                        });
                      },
                      child: Text(
                        !isSignup ? "Sign up" : "Login",
                        style: GoogleFonts.anekTamil(
                            fontSize: 13, color: Colors.red),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}