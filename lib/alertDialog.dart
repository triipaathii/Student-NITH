import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void alertDialogBox(
    String message, BuildContext context, String title, Color color) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Text(
              message,
              style: GoogleFonts.abel(color: Colors.white),
            ),
            title: Text(
              title,
              style: GoogleFonts.abel(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: color,
          ));
}
