import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SendingMoney(),
    );
  }
}

class SendingMoney extends StatefulWidget {
  @override
  _SendingMoneyState createState() => _SendingMoneyState();
}

class _SendingMoneyState extends State<SendingMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text("Sending Money"),
              centerTitle: true,),
      body: Text("This is a Sending Page"),
    );
  }
}