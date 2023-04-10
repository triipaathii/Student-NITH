import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:student_nith/homepage.dart";

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff640f12),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
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
              style: GoogleFonts.abel(color: Colors.white, fontSize: 18),
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
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              " Password",
              style: GoogleFonts.abel(color: Colors.white, fontSize: 18),
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
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homepage()));
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05, vertical: height * 0.01),
                      backgroundColor: const Color(0xff08243c),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.abel(color: Colors.white, fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
