import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Semreg3 extends StatefulWidget {
  const Semreg3({super.key});

  @override
  State<Semreg3> createState() => _Semreg3State();
}

class _Semreg3State extends State<Semreg3> {



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
          "Semester Registration",
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




            ],
          ),
        ),
      ),
    );
  }
}
