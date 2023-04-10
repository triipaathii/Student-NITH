import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_nith/hostel.dart';
import 'package:student_nith/login.dart';
import 'package:student_nith/profile.dart';
import 'package:student_nith/result.dart';
import 'package:student_nith/semreg1.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff640f12),
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        primary: true,
        title: Text(
          "Home",
          style:
              GoogleFonts.abel(fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              icon: const Icon(
                Icons.account_circle,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg5.jpg"),
                fit: BoxFit.cover,
                opacity: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xff640f12),
                      borderRadius: BorderRadius.circular(16)),
                  height: height * 0.12,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: width * 0.25),
                  child: Text(
                    "SEMESTER REGISTRATION",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.abel(color: Colors.white, fontSize: 18),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Semreg1()));
                }),
            InkWell(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xff640f12),
                      borderRadius: BorderRadius.circular(16)),
                  height: height * 0.12,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: width * 0.25),
                  child: Text(
                    "HOSTEL ROOM ALLOTMENT",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.abel(color: Colors.white, fontSize: 18),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Hostel()));
                }),
            InkWell(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xff640f12),
                      borderRadius: BorderRadius.circular(16)),
                  height: height * 0.12,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: width * 0.25),
                  child: Text(
                    "RESULT",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.abel(color: Colors.white, fontSize: 18),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Result()));
                }),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LogIn()));
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05, vertical: height * 0.01),
                      backgroundColor: const Color(0xff08243c),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                  child: Text(
                    "LOGOUT",
                    style: GoogleFonts.abel(color: Colors.white, fontSize: 20),
                  )),
          ],
        ),
      ),
    );
  }
}
