import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TableColumnResize extends StatefulWidget {
  const TableColumnResize({super.key});

  @override
  State<StatefulWidget> createState() => _TableColumnResize();
}

class _TableColumnResize extends State<TableColumnResize> {
  double columnWidth = 200;
  double initX = 0;
  final minimumColumnWidth = 50.0;
  final verticalScrollController = ScrollController();
  final horizontalScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff640f12),
        primary: true,
        title: Text(
          "Semester Registration",
          style:
              GoogleFonts.abel(fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: double.infinity,
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
                  child: _resizableColumnWidth(),
                ),
              ),
            ),
          ),

          // child: InteractiveViewer(
          //   child: _resizableColumnWidth(),
          //   constrained: false,
          //   scaleEnabled: false,
          // ),
        ),
      ),
    );
  }

  Widget _resizableColumnWidth() {
    return DataTable(
        columns: [
          DataColumn(
            label: Stack(
              children: [
                Container(
                  width: columnWidth,
                  constraints: const BoxConstraints(minWidth: 100),
                  child: const Text('Column 1'),
                ),
                Positioned(
                  right: 0,
                  child: GestureDetector(
                    onPanStart: (details) {
                      // debugPrint(details.globalPosition.dx.toString());
                      setState(() {
                        initX = details.globalPosition.dx;
                      });
                    },
                    onPanUpdate: (details) {
                      final increment = details.globalPosition.dx - initX;
                      // debugPrint(newWidth.toString());
                      final newWidth = columnWidth + increment;
                      setState(() {
                        initX = details.globalPosition.dx;
                        columnWidth = newWidth > minimumColumnWidth
                            ? newWidth
                            : minimumColumnWidth;
                      });
                    },
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const DataColumn(label: Text("Column 2")),
          const DataColumn(label: Text("Column 3")),
          const DataColumn(label: Text("Column 4")),
          const DataColumn(label: Text("Column 5")),
          const DataColumn(label: Text("Column 6")),
        ],
        rows: List.generate(
          20,
          (index) => DataRow(
            cells: [
              DataCell(
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: columnWidth),
                  child: Text(
                    "Column1: Row index $index: long text 1234567890 1234567890 1234567890 1234567890",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                  ),
                ),
              ),
              DataCell(Text("Column2: Row index $index")),
              DataCell(Text("Column3: Row index $index")),
              DataCell(Text("Column4: Row index $index")),
              DataCell(Text("Column5: Row index $index")),
              DataCell(Text("Column6: Row index $index")),
            ],
          ),
        ));
  }
}
