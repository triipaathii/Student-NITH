import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_nith/homepage.dart';
import 'package:student_nith/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? rollNo;
  Future<void> _loadRollNo() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      rollNo = prefs.getString('rollNo');
    });
  }

  @override
  void initState() {
    super.initState();
    _loadRollNo();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: rollNo == null ? const LogIn() : const Homepage(),
    );
  }
}
