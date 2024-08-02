import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:pixel6/common.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {

  List<dynamic> employees = [];
  String countryFilter = 'Country';
  String genderFilter = 'Gender';
  bool isLoading = false;

  ///data fetch
  Future<void> fetchEmployees() async {
    final response =
    await http.get(Uri.parse('https://dummyjson.com/users?limit=100'));
    if (response.statusCode == 200) {
      setState(() {
        employees = json.decode(response.body)['users'];
      });
    } else {
      throw Exception('Failed to load employees');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        title: Image.asset(
          'assets/image/logo.png',
          height: 50,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.filter_alt),
                const SizedBox(width: 10),

                ///dropdown
                customDropDown(
                    countryFilter,
                    ['Country', 'USA', 'India', 'China'],
                      (String? newValue) {
                    setState(() {
                      countryFilter = newValue ?? countryFilter;
                    });
                  },
                ),
                const SizedBox(width: 10),
                customDropDown(
                  genderFilter,
                  ['Gender', 'Male', 'Female'],
                      (String? newValue) {
                    setState(() {
                      genderFilter = newValue ?? genderFilter;
                    });
                  },
                ),

              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('ID')),
                    DataColumn(label: Text('Image')),
                    DataColumn(label: Text('Full Name')),
                    DataColumn(label: Text('Age')),
                    DataColumn(label: Text('Gender')),
                  ],
                  rows: employees.map((employee) {
                    return DataRow(cells: [
                      DataCell(Text(employee['id'].toString())),
                      DataCell(CircleAvatar(
                        backgroundImage: NetworkImage(employee['image']),
                      )),
                      DataCell(Text(
                          '${employee['firstName']} ${employee['lastName']}')),
                      DataCell(Text(employee['age'].toString())),
                      DataCell(Text(employee['gender'])),
                    ]);
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
