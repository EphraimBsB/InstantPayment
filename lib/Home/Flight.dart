import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Flight(),
    );
  }
}

class Flight extends StatefulWidget {
  @override
  FlightState createState() => FlightState();
}

class FlightState extends State<Flight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text("Flights"),
              centerTitle: true,),
      body: Text("This is a Flight Tickets Page"),

      
    );
  }
}