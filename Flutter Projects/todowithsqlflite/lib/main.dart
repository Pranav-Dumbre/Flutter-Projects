import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

//global variable for database
dynamic database;

class Employee {
  final int empId;
  final String name;
  final double sal;

  Employee({required this.empId, required this.name, required this.sal});
//sqflite stores data in the form of map (key value pairs)
  Map<String, dynamic> employeeMap() {
    return {
      'empId': empId,
      'name': name,
      'sal': sal,
    };
  }
}

//INSERT
Future<void> insertEmployeeData(Employee emp) async {
  final localDB = await database;

  localDB.insert(
    'Employee', //TABLE NAME
    emp.employeeMap(), //TUPLE TO INSERT
    conflictAlgorithm:
        ConflictAlgorithm.replace, //what to do when conflict arrises
  );
}

//RETRIEVE
Future<List<Map<String, dynamic>>> getEmployeeData() async {
  final localDB = await database;
  List<Map<String, dynamic>> mapEntry = await localDB.query("Employee");
  return mapEntry;
}

//DELETE
Future<void> deleteEmployeeData(Employee emp) async {
  final localDB = await database;
  await localDB.delete(
    "Employee", //Table name
    where: "empId=?", //parameter to select a record
    whereArgs: [
      emp.empId
    ], //value of selected parameter to uniquely identify record
  );
}

void main() async {
  runApp(const MainApp());
  print("=====================================");

  database = openDatabase(
    //join specifies the absolute path includes defalut path + db name
    //join is from path.dart
    //getDatabasesPath() gives dafault path irrespective of underlying system.
    //getDatabasesPath() is from sqflite
    join(await getDatabasesPath(), 'employeeDB.db'),
    //version is for downgrading or upgarding the database
    version: 1,
    //we can use onCreate / onUpgrade / onDowngrade

    //when we create db for first time we use onCreate
    //onCreate is used to create all tables in db when db is created.
    onCreate: ((db, version) {
      //execute sql query
      db.execute('''CREATE TABLE Employee (
        empId INT PRIMARY KEY,
        name TEXT,
        sal REAL
        )''');
    }),
  );
  Employee emp1 = Employee(empId: 101, name: "Prasad", sal: 1.3);
  Employee emp2 = Employee(empId: 102, name: "Bapu", sal: 1.7);

  await insertEmployeeData(emp1);
  await insertEmployeeData(emp2);

  List<Map<String, dynamic>> retVal = await getEmployeeData();
  for (int i = 0; i < retVal.length; i++) {
    print(retVal[i]);
  }

  await deleteEmployeeData(emp1);
  print("After delete");

  retVal = await getEmployeeData();
  for (int i = 0; i < retVal.length; i++) {
    print(retVal[i]);
  }
  Employee emp3 = Employee(empId: 102, name: "Ram", sal: 3.0);

  await insertEmployeeData(emp3);
  print("inserted new data");
  retVal = await getEmployeeData();
  for (int i = 0; i < retVal.length; i++) {
    print(retVal[i]);
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
