import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<StatefulWidget> createState() => _Courses();
}

class _Courses extends State<Courses> {
  double columnWidth = 200;
  double initX = 0;
  final minimumColumnWidth = 50.0;
  final verticalScrollController = ScrollController();
  final horizontalScrollController = ScrollController();
  final subjects = [
    {
      "course_code": "CS-321",
      "l": 3,
      "t": 1,
      "p/d": 0,
      "course_name": "Distributed Systems",
      "credits": 4
    },
    {
      "course_code": "CS-322",
      "l": 3,
      "t": 1,
      "p/d": 0,
      "course_name": "Software Engineering",
      "credits": 4
    },
    {
      "course_code": "CS-323",
      "l": 3,
      "t": 1,
      "p/d": 0,
      "course_name": "Digital Image Processing",
      "credits": 4
    },
    {
      "course_code": "CS-324",
      "l": 3,
      "t": 0,
      "p/d": 0,
      "course_name": "Computer Networks",
      "credits": 3
    },
    {
      "course_code": "OET",
      "l": 3,
      "t": 0,
      "p/d": 0,
      "course_name": "Open Elective",
      "credits": 3
    },
    {
      "course_code": "CS-325",
      "l": 0,
      "t": 0,
      "p/d": 2,
      "course_name": "Digital Image Processing Lab",
      "credits": 1
    },
    {
      "course_code": "CS-326",
      "l": 0,
      "t": 0,
      "p/d": 2,
      "course_name": "Computer Networks Lab",
      "credits": 1
    },
    {
      "course_code": "CS-329",
      "l": 0,
      "t": 0,
      "p/d": 2,
      "course_name": "Seminar",
      "credits": 1
    },
  ];

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
      body: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Text(
            " Details of Courses (Registered during current Semester) :",
            style: GoogleFonts.abel(color: Colors.black, fontSize: 16),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
            ),
            margin: const EdgeInsets.all(15.0),

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
    );
  }

  Widget _columnWidth() {
    return DataTable(
        columns: const [
          DataColumn(
            label: Text('S.No.'),
          ),
          DataColumn(label: Text("Course Code")),
          DataColumn(label: Text("Course Name")),
          DataColumn(label: Text("L")),
          DataColumn(label: Text("T")),
          DataColumn(label: Text("P/D")),
          DataColumn(label: Text("Credits")),
        ],
        rows: List.generate(
          subjects.length,
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
              DataCell(Text("${subjects[index]["course_code"]}")),
              DataCell(Text("${subjects[index]["course_name"]}")),
              DataCell(Text("${subjects[index]["l"]}")),
              DataCell(Text("${subjects[index]["t"]}")),
              DataCell(Text("${subjects[index]["p/d"]}")),
              DataCell(Text("${subjects[index]["credits"]}")),
            ],
          ),
        ));
  }
}
