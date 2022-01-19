import 'package:flutter/material.dart';

void main() {
  print("Hi Mehedi!");

  List<String> students = ["Mehedi", "Yakub", "yunus"];
  for(String s in students){
    print(s);
  }

  Student st1 = new Student("Mehedi", "Noakhali");
  Student st2 = new Student("Yakub", "Barishal");

  List<Student> stList = [st1 , st2];
  for(Student s in stList){
    print("Name: " + s._name + ", " + "Address: " + s._address);
  }
  runApp(MyApp());
}

class Student{
   String _name;
   String _address;

  Student(this._name, this._address);
   String get name => _name;
  set name(String value) {
    _name = value;
  }
   String get address => _address;
  set address(String value) {
    _address = value;
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Hello World !"),
          ),
          body: Center(
            child: Text("Hello Bangladesh !"),
          ),

        )
    );
  }
}