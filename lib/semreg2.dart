import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_nith/courses.dart';
import 'package:student_nith/semreg3.dart';

class Semreg2 extends StatefulWidget {
  const Semreg2({super.key});

  @override
  State<Semreg2> createState() => _Semreg2State();
}

class _Semreg2State extends State<Semreg2> {
  final rollNoController = TextEditingController();
  final registrationSemesterNumberController = TextEditingController();
  final nameOfHostelController = TextEditingController();
  final roomNumberController = TextEditingController();
  final programmeController = TextEditingController();
  final nameController = TextEditingController();
  final fatherNameController = TextEditingController();
  final addressForCorrespondenceController = TextEditingController();
  final pincode1Controller = TextEditingController();
  final permanentAddressController = TextEditingController();
  final pincode2Controller = TextEditingController();
  final mobileController = TextEditingController();
  final eMailController = TextEditingController();
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
              SizedBox(
                height: height * 0.06,
              ),
              Center(
                child: InkWell(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xff640f12),
                          borderRadius: BorderRadius.circular(16)),
                      height: height * 0.15,
                      width: width * 0.5,
                      margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                      child: Text(
                        "Details of the Courses (Registered during current Semester)",
                        textAlign: TextAlign.center,
                        style:
                            GoogleFonts.abel(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Courses()));
                    }),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                " Result of Previous Semester",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 22),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                "  Previous Semester Number :",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                decoration: BoxDecoration(
                    color: const Color(0xffd9d9d9),
                    borderRadius: BorderRadius.circular(13)),
                child: TextFormField(
                  controller: programmeController,
                  keyboardType: TextInputType.emailAddress,
                  style: GoogleFonts.abel(),
                  cursorColor: const Color(0xff08243c),
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                "  SGPI :",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                decoration: BoxDecoration(
                    color: const Color(0xffd9d9d9),
                    borderRadius: BorderRadius.circular(13)),
                child: TextFormField(
                  controller: programmeController,
                  keyboardType: TextInputType.emailAddress,
                  style: GoogleFonts.abel(),
                  cursorColor: const Color(0xff08243c),
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                "  CGPI :",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                decoration: BoxDecoration(
                    color: const Color(0xffd9d9d9),
                    borderRadius: BorderRadius.circular(13)),
                child: TextFormField(
                  controller: programmeController,
                  keyboardType: TextInputType.emailAddress,
                  style: GoogleFonts.abel(),
                  cursorColor: const Color(0xff08243c),
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                " Courses with F Grade (if any) :",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                " Write Course Codes :",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 14),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                decoration: BoxDecoration(
                    color: const Color(0xffd9d9d9),
                    borderRadius: BorderRadius.circular(13)),
                child: TextFormField(
                  controller: programmeController,
                  keyboardType: TextInputType.emailAddress,
                  style: GoogleFonts.abel(),
                  cursorColor: const Color(0xff08243c),
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Semreg3()));
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05, vertical: height * 0.01),
                        backgroundColor: const Color(0xff08243c),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13))),
                    child: Text(
                      "NEXT",
                      style:
                          GoogleFonts.abel(color: Colors.white, fontSize: 20),
                    )),
              ),
              SizedBox(
                height: height * 0.07,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
