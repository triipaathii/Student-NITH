import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_nith/alertDialog.dart';
import 'package:student_nith/homepage.dart';

class Semreg3 extends StatefulWidget {
  const Semreg3({super.key});

  @override
  State<Semreg3> createState() => _Semreg3State();
}

class _Semreg3State extends State<Semreg3> {

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isLoading = false;
  final amountController = TextEditingController();
  final dateOfPaymentController = TextEditingController();
  final transactionNumberController = TextEditingController();
  final studentDeclarationDateController = TextEditingController();


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
          : SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.06,
                    ),
                    Text(
                      " Semester Fee Details",
                      style:
                          GoogleFonts.abel(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      "  Amount:",
                      style:
                          GoogleFonts.abel(color: Colors.black, fontSize: 16),
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
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      "  Date of Payment :",
                      style:
                          GoogleFonts.abel(color: Colors.black, fontSize: 16),
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
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      "  SBI Collect Transaction Number :",
                      style:
                          GoogleFonts.abel(color: Colors.black, fontSize: 16),
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
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "  Upload Proof of Fee Payment :",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff640F12),
                              borderRadius: BorderRadius.circular(5)),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.upload_file,
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.07,
                    ),
                    Text(
                      " Student Declaration",
                      style:
                          GoogleFonts.abel(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      "  Date :",
                      style:
                          GoogleFonts.abel(color: Colors.black, fontSize: 16),
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
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Text(
                      "I hereby declare that the information furnished by me in this Registration Form is true and correct. I have not concealed any information. However, if any information furnished herein is incorrect or incomplete, I understand that I am liable to appropriate action and I also agree to forego my registration",
                      style:
                          GoogleFonts.abel(color: Colors.black, fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "YES",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Checkbox(
                          checkColor: Colors.white,
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked1 = value!;
                            });
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Text(
                      " Undertaking for Clearance of Dues",
                      style:
                          GoogleFonts.abel(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      "I undertake to pay/clear the Dues, if any, found outstanding against my name at Library, Hostel, Accounts and any other Department/Section, as per the directions/notification of the authorities.",
                      style:
                          GoogleFonts.abel(color: Colors.black, fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "YES",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Checkbox(
                          checkColor: Colors.white,
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked2 = value!;
                            });
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () async {
                            setState(() {
                              isLoading = true;
                            });
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setBool("sem registered", true);
                            Future.delayed(const Duration(seconds: 5), () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Homepage()));
                              alertDialogBox("Registered for the semester",
                                  context, "Success", const Color(0xff08243c));
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05,
                                  vertical: height * 0.01),
                              backgroundColor: const Color(0xff08243c),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13))),
                          child: Text(
                            "SUBMIT",
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
