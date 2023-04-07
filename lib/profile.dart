import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final nameController = TextEditingController();
  final rollNoController = TextEditingController();
  final fatherNameController = TextEditingController();
  final mobileController = TextEditingController();
  final addressLine1Controller = TextEditingController();
  final addressLine2Controller = TextEditingController();
  final cityController = TextEditingController();
  final districtController = TextEditingController();
  final stateController = TextEditingController();
  final pincodeController = TextEditingController();
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
          "PROFILE",
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
                width: double.infinity,
                height: height * 0.05,
              ),
              Center(
                child: Image.asset(
                  "assets/images/man.png",
                  height: height * 0.2,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Center(
                child: Text(
                  "SELECT FROM",
                  style: GoogleFonts.abel(),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff640F12),
                        borderRadius: BorderRadius.circular(5)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                        )),
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
                          Icons.image_rounded,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                " Name",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
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
                  controller: nameController,
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
                " Roll No.",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
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
                  controller: rollNoController,
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
                " Father's Name",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
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
                  controller: fatherNameController,
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
                " Mobile No.",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
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
                  controller: mobileController,
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
                " Adress Line 1",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
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
                  controller: addressLine1Controller,
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
                " Address Line 2",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
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
                  controller: addressLine2Controller,
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
                " City",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
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
                  controller: cityController,
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
                " District",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
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
                  controller: districtController,
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
                " State",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
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
                  controller: stateController,
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
                " Pincode",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
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
                  controller: pincodeController,
                  keyboardType: TextInputType.emailAddress,
                  style: GoogleFonts.abel(),
                  cursorColor: const Color(0xff08243c),
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05, vertical: height * 0.01),
                        backgroundColor: const Color(0xff08243c),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13))),
                    child: Text(
                      "SAVE",
                      style:
                          GoogleFonts.abel(color: Colors.white, fontSize: 20),
                    )),
              ),
              SizedBox(
                height: height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
