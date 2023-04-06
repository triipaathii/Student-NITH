import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade600,
      appBar: AppBar(
        backgroundColor: Color(0xff624102),
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              alignment: Alignment.center,

              width: double.infinity,
              color: Colors.cyan,
              child: Text("TEJAS"),
            ),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.amber,
              child: Text("ADWAID"),
            ),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.deepPurpleAccent,
              child: Text("LENDI"),
            )
          ],
        ),
      ),
    );
  }
}
