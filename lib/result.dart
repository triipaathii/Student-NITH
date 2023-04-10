import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_nith/database.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String? rollNo;
  bool isLoading = true;

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

  late Map<String, dynamic> _userResult;

  Future<void> _loadResult() async {
    final prefs = await SharedPreferences.getInstance();
    rollNo = prefs.getString("rollNo");
    print(rollNo);
    final response = await DataBaseMethods().viewResult(rollNo, context);
    if (rollNo != null) {
      setState(() {
        _userResult = response;
        isLoading = false;
      });
      print("===== USER RESULT ============");
      print(_userResult);
      // print(_userResult['semesterCompleteResult'][0]['subjectResult'].length);
    }
  }

  @override
  void initState() {
    super.initState();
    _loadResult();
  }

  double columnWidth = 200;
  double initX = 0;
  final minimumColumnWidth = 50.0;
  final verticalScrollController = ScrollController();
  final horizontalScrollController = ScrollController();

  Widget _semResult(index) {
    return Column(
      children: [
        const Divider(
          color: Color(0xff640f12),
          thickness: 2,
        ),
        Center(
          child: Text(
            "SEM  - ${_userResult['semesterCompleteResult'][index]['semesterNo']}",
            style: GoogleFonts.abel(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: const Color(0xff640f12)),
          ),
        ),
        const Divider(
          color: Color(0xff640f12),
          thickness: 2,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
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
                  child: _columnWidth(index),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }

  Widget _columnWidth(i) {
    final semester = _userResult['semesterCompleteResult'][i];
    return DataTable(
        columns: const [
          DataColumn(
            label: Text('S.No.'),
          ),
          DataColumn(label: Text("Course name")),
          DataColumn(label: Text("Course Code")),
          DataColumn(label: Text("Sub Point")),
          DataColumn(label: Text("Grade")),
          DataColumn(label: Text("Sub GP")),
        ],
        rows: List.generate(
          semester['subjectResult'].length,
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
              DataCell(Text(
                  semester['subjectResult'][index]['subjectName'].toString())),
              DataCell(Text(
                  semester['subjectResult'][index]['subjectCode'].toString())),
              DataCell(Text(
                  semester['subjectResult'][index]['subpoints'].toString())),
              DataCell(
                  Text(semester['subjectResult'][index]['grade'].toString())),
              DataCell(
                  Text(semester['subjectResult'][index]['subGP'].toString())),
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
                      height: height * 0.04,
                    ),
                    Row(
                      children: [
                        Text(
                          "Branch: ",
                          style: GoogleFonts.abel(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${result["branch"]}",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          "Roll No: ",
                          style: GoogleFonts.abel(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${result["roll_no"]}",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          "Graduation Year: ",
                          style: GoogleFonts.abel(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                        Text(
                          "${result["graduation_year"]}",
                          style: GoogleFonts.abel(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          "Current Semester: ",
                          style: GoogleFonts.abel(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                        Text(
                          "${result["Current Semester"]}",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          "Current CGPI: ",
                          style: GoogleFonts.abel(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                        Text(
                          "${result["CGPI"]}",
                          style: GoogleFonts.abel(
                              color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    for (int i = 0;
                        i < _userResult['semesterCompleteResult'].length;
                        i++) ...[_semResult(i)]
                  ],
                ),
              ),
            ),
    );
  }
}
