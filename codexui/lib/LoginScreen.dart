import 'package:codexui/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  void handleLogin() {
    if (_emailController.text.length < 1 ||
        _passwordController.text.length < 1) {
      return;
    }
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Homepage(),
        ));
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
                        "Welcome",
                        style: GoogleFonts.jost(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w400),
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 40, top: 20),
                      child: Text(
                        "Please sign in to continue",
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
                Container(
                  height: 50,
                  width: 291,
                  margin: EdgeInsets.only(top: 100),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1)),
                  // padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Mobile no. or email",
                        hintStyle: GoogleFonts.anekTamil(
                            fontWeight: FontWeight.w400, fontSize: 15),
                        suffixIcon:
                            Image.asset("images/xmark.circle.fill.png")),
                  ),
                ),
                Container(
                  height: 50,
                  width: 291,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1)),
                  // padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Password",
                        hintStyle: GoogleFonts.anekTamil(
                            fontWeight: FontWeight.w400, fontSize: 15),
                        suffixIcon: Image.asset("images/invisible1.png")),
                  ),
                ),
                Text(
                  "Forgot password?",
                  style: GoogleFonts.anekTamil(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8E8E93)),
                ),
                Container(
                  height: 40,
                  width: 291,
                  margin: EdgeInsets.only(top: 50, bottom: 50),
                  decoration: BoxDecoration(
                      color: Color(0xff6371F2),
                      borderRadius: BorderRadius.all(Radius.circular(659))),
                  child: InkWell(
                    onTap: () {
                      handleLogin();
                    },
                    child: Center(
                        child: Text(
                      "Login",
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
                      "Don't have an account?",
                      style: GoogleFonts.anekTamil(
                          fontSize: 13, color: Color(0xff8E8E93)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sign up",
                      style: GoogleFonts.anekTamil(
                          fontSize: 13, color: Colors.red),
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
