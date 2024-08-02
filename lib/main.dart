import 'package:flutter/material.dart';
import 'package:pixel6/screen/employee_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Employee List',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const EmployeeScreen(),
    );
  }
}