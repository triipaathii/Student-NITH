import "package:flutter/material.dart";
import "package:get/route_manager.dart";
import "package:google_fonts/google_fonts.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:student_nith/alertDialog.dart";
import "package:student_nith/database.dart";
import "package:student_nith/homepage.dart";

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff640f12),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.13,
                      width: double.infinity,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/nith_logo.png",
                        height: height * 0.225,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.15,
                    ),
                    Text(
                      " College Email ID",
                      style:
                          GoogleFonts.abel(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      decoration: BoxDecoration(
                          color: const Color(0xfff1ebce),
                          borderRadius: BorderRadius.circular(13)),
                      child: TextFormField(
                        controller: emailController,
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
                      " Password",
                      style:
                          GoogleFonts.abel(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      decoration: BoxDecoration(
                          color: const Color(0xfff1ebce),
                          borderRadius: BorderRadius.circular(13)),
                      child: TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        style: GoogleFonts.abel(),
                        cursorColor: const Color(0xff08243c),
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () async {
                            setState(() {
                              isLoading = true;
                            });
                            if (emailController.text.isEmpty ||
                                passwordController.text.isEmpty) {
                              alertDialogBox("Email Id/Password missing",
                                  context, "Error", const Color(0xff640f12));
                            } else if (!emailController.text
                                .contains("@nith.ac.in")) {
                              alertDialogBox("Enter valid college email Id",
                                  context, "Error", const Color(0xff640f12));
                            } else {
                              if (await DataBaseMethods().userLogIn(
                                  emailController.text,
                                  passwordController.text,
                                  context)) {
                                final rollNo = emailController.text
                                    .replaceAll("@nith.ac.in", "");
                                print("========== ROLL NO =========");
                                print(rollNo);
                                final prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setString("rollNo", rollNo);
                                Get.offAll(() => const Homepage());
                              }
                            }
                            setState(() {
                              isLoading = false;
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
                            "LOGIN",
                            style: GoogleFonts.abel(
                                color: Colors.white, fontSize: 20),
                          )),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
