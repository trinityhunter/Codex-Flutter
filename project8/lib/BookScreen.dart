import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project8/Category.dart';
import 'package:project8/CategoryCard.dart';
import 'package:project8/Events.dart';

class Bookscreen extends StatelessWidget {
  const Bookscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xFF1D4D4F).withOpacity(0.1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Search Now",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Image.asset("images/Filter.png"))
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.only(bottom: 15),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Events(title: "Near By", imgUrl: "images/NearBy.png",),
                    SizedBox(width: 12,),
                    Events(title: "Book Room", imgUrl: "images/BookRoom.png",),
                    SizedBox(width: 12,),
                    Events(title: "Add Event", imgUrl: "images/AddEvent.png",),
                  ],
                ),
              ),
              Text("Category", style: GoogleFonts.poppins(color: Color(0xFF0D2D3A), fontSize: 24, fontWeight: FontWeight.w600, )),
          
              Container(
                margin: EdgeInsets.only(top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Category(isDefault: true, title: "House"),
                      Category(isDefault: false, title: "Villa"),
                      Category(isDefault: false, title: "Apartments"),
                      Category(isDefault: false, title: "Penthouse"),
                    ],
                  ),
                ),
              ),
              Categorycard(imgUrl: "images/Hut1.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut2.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut1.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut2.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut1.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut2.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut1.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut2.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut1.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut2.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut1.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut2.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut1.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              Categorycard(imgUrl: "images/Hut2.png", title: "Wooden Hut", location: "Merbabu, Central Java"),
              
            ],
          ),
        ),
      ),
    );
  }
}
