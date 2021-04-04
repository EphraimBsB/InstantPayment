import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Phone(),
    );
  }
}

class Phone extends StatefulWidget {
  @override
  PhoneState createState() => PhoneState();
}

class PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text("AirTime"),
              centerTitle: true,),
      body: Text("This is Page for AirTime"),

      
    );
  }
}