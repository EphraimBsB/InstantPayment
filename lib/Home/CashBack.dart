import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CashBack(),
    );
  }
}

class CashBack extends StatefulWidget {
  @override
  CashBackState createState() => CashBackState();
}

class CashBackState extends State<CashBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text("Cash Back"),
              centerTitle: true,),
      body: Text("This is a Cash Back Page"),

      
    );
  }
}