import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_nith/alertDialog.dart';
import 'package:student_nith/semreg2.dart';

class Semreg1 extends StatefulWidget {
  const Semreg1({super.key});

  @override
  State<Semreg1> createState() => _Semreg1State();
}

class _Semreg1State extends State<Semreg1> {
  bool? isRegistered;
  bool isLoading = true;
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

  Future<void> _checkRegistrationStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isRegistered = prefs.getBool("sem registered");
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _checkRegistrationStatus();
  }

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
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Color(0xff08243c),
              ),
            )
          : isRegistered!
              ? Center(
                  child: Text(
                    "You have already registred in the upcoming semester",
                    style: GoogleFonts.abel(),
                  ),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        const Center(
                          child: Text(
                            'REGISTRATION FORM',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Text(
                          " Roll No. :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: rollNoController,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          " Registration Semester Number :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 18),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: registrationSemesterNumberController,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          " Name of Hostel :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: nameOfHostelController,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          " Room Number :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: roomNumberController,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          " Programme :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: programmeController,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          " Name :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: nameController,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          " Father's Name :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: fatherNameController,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          " Address for correspondence :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: addressForCorrespondenceController,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          " Pincode :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: pincode1Controller,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          " Permanent Address :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: permanentAddressController,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          " Pincode :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: pincode2Controller,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          " Mobile :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: mobileController,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          " Email ID :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          decoration: BoxDecoration(
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(13)),
                          child: TextFormField(
                            controller: eMailController,
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.abel(),
                            cursorColor: const Color(0xff08243c),
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.07,
                        ),
                        Center(
                          child: ElevatedButton(
                              onPressed: () {
                                // if (rollNoController.text.isEmpty ||
                                //     registrationSemesterNumberController.text.isEmpty ||
                                //     nameOfHostelController.text.isEmpty ||
                                //     roomNumberController.text.isEmpty ||
                                //     programmeController.text.isEmpty ||
                                //     nameController.text.isEmpty ||
                                //     fatherNameController.text.isEmpty ||
                                //     addressForCorrespondenceController.text.isEmpty ||
                                //     pincode1Controller.text.isEmpty ||
                                //     permanentAddressController.text.isEmpty ||
                                //     pincode2Controller.text.isEmpty ||
                                //     mobileController.text.isEmpty ||
                                //     eMailController.text.isEmpty) {
                                //   alertDialogBox("Details missing", context, "Error",
                                //       const Color(0xff640f12));
                                // } else {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) => const Semreg2()));
                                // }
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Semreg2()));
                              },
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.05,
                                      vertical: height * 0.01),
                                  backgroundColor: const Color(0xff08243c),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13))),
                              child: Text(
                                "NEXT",
                                style: GoogleFonts.abel(
                                    color: Colors.white, fontSize: 20),
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
