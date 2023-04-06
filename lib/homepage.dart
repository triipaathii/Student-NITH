import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_nith/profile.dart';

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
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
                opacity: 0.7)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xff640f12),
                  borderRadius: BorderRadius.circular(16)),
              height: height * 0.15,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: width * 0.25),
              child: Text(
                "SEMESTER REGISTRATION",
                textAlign: TextAlign.center,
                style: GoogleFonts.abel(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xff640f12),
                  borderRadius: BorderRadius.circular(16)),
              height: height * 0.15,
              width: width * 0.5,
              child: Text(
                "HOSTEL ROOM ALLOTMENT",
                textAlign: TextAlign.center,
                style: GoogleFonts.abel(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xff640f12),
                  borderRadius: BorderRadius.circular(16)),
              height: height * 0.15,
              width: width * 0.5,
              child: Text(
                "RESULT",
                textAlign: TextAlign.center,
                style: GoogleFonts.abel(color: Colors.white, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
