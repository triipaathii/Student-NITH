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
  final score = [
    {
      "serialNo": "1",
      "subjectCode": "CS-69",
      "subjectPoint": "3",
      "grade": "s",
      "subjectGP": "11"
    },
    {
      "serialNo": "1",
      "subjectCode": "CS-69",
      "subjectPoint": "3",
      "grade": "s",
      "subjectGP": "11"
    },
    {
      "serialNo": "1",
      "subjectCode": "CS-69",
      "subjectPoint": "3",
      "grade": "s",
      "subjectGP": "11"
    },
    {
      "serialNo": "1",
      "subjectCode": "CS-69",
      "subjectPoint": "3",
      "grade": "s",
      "subjectGP": "11"
    },
    {
      "serialNo": "1",
      "subjectCode": "CS-69",
      "subjectPoint": "3",
      "grade": "s",
      "subjectGP": "11"
    },
  ];

  double columnWidth = 200;
  double initX = 0;
  final minimumColumnWidth = 50.0;
  final verticalScrollController = ScrollController();
  final horizontalScrollController = ScrollController();

  Widget _columnWidth() {
    return DataTable(
        columns: const [
          DataColumn(
            label: Text('S.No.'),
          ),
          DataColumn(label: Text("Serial No")),
          DataColumn(label: Text("Sub Code")),
          DataColumn(label: Text("Sub Point")),
          DataColumn(label: Text("Grade")),
          DataColumn(label: Text("Sub GP")),
        ],
        rows: List.generate(
          score.length,
          (index) => DataRow(
            cells: [
              DataCell(
                Text(
                  (index + 1).toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                ),
              ),
              DataCell(Text("${score[index]["serialNo"]}")),
              DataCell(Text("${score[index]["subjectCode"]}")),
              DataCell(Text("${score[index]["subjectPoint"]}")),
              DataCell(Text("${score[index]["grade"]}")),
              DataCell(Text("${score[index]["subjectGP"]}")),
            ],
          ),
        ));
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
                "CGPI: ${result["CGPI"]}",
                style: GoogleFonts.abel(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                margin: const EdgeInsets.all(0),

                child: Scrollbar(
                  thumbVisibility: true,
                  trackVisibility: true, // make the scrollbar easy to see
                  controller: verticalScrollController,
                  child: Scrollbar(
                    thumbVisibility: true,
                    trackVisibility: true,
                    controller: horizontalScrollController,
                    notificationPredicate: (notif) => notif.depth == 1,
                    child: SingleChildScrollView(
                      controller: verticalScrollController,
                      scrollDirection: Axis.vertical,
                      child: SingleChildScrollView(
                        controller: horizontalScrollController,
                        scrollDirection: Axis.horizontal,
                        child: _columnWidth(),
                      ),
                    ),
                  ),
                ),

                // child: InteractiveViewer(
                //   child: _columnWidth(),
                //   constrained: false,
                //   scaleEnabled: false,
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
