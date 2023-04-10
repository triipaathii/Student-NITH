import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:student_nith/alertDialog.dart';

String baseUrl = "https://college-management-backend.onrender.com/api/v1";
Map<String, String> headersMap = {
  'Content-Type': 'application/json; charset=UTF-8',
};

class DataBaseMethods {
  Future<dynamic> userLogIn(email, password, context) async {
    String endPoint = '/login';
    final finalUrl = baseUrl + endPoint;

    Map<String, dynamic> logInDetails = {"email": email, "password": password};
    try {
      final response = await http.post(Uri.parse(finalUrl),
          headers: headersMap, body: jsonEncode(logInDetails));
      final result = jsonDecode(response.body);
      print("========= LOGIN RESULT ==========");
      print(result);
      if (result['message'] == "User found") {
        return true;
      } else {
        alertDialogBox("Wrong Credentials/Student not found", context, "Error",
            const Color(0xff640f12));
        return false;
      }
    } catch (e) {
      print(e);
    }
  }

  Future<dynamic> viewResult(rollNo, context) async {
    String endPoint = '/result';
    final finalUrl = baseUrl + endPoint;
    var result;
    Map<String, dynamic> rollNoDetails = {"rollNo": rollNo};
    try {
      final response = await http.post(Uri.parse(finalUrl),
          headers: headersMap, body: jsonEncode(rollNoDetails));
      result = jsonDecode(response.body);
      if (result['message'] == "Student Not found") {
        alertDialogBox(
            "Student not found", context, "Error", const Color(0xff640f12));
      } else {
        return result;
      }
    } catch (e) {
      print(e);
    }
  }
}
