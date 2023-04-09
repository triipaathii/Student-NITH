import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final result = {
    "branch": "CSE",
    "roll_no": "20bcs009",
    "graduation_year": "2024",
    "Current Semester": "6th",
    "SGPI": "9.99",
    "CGPI": "9.6"
  };
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xfff1ebce),
      appBar: AppBar(
        backgroundColor: const Color(0xff640f12),
        primary: true,
        title: Text(
          "Result",
          style:
              GoogleFonts.abel(fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Branch: ${result["branch"]}",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Roll No: ${result["roll_no"]}",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Graduation Year: ${result["graduation_year"]}",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Current Semester: ${result["Current Semester"]}",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "SGPI: ${result["SGPI"]}",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "CGPI: ${result["cgpi"]}",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                height: height * 0.02,
              )
            ],
          ),
        ),
      ),
    );
  }
}
