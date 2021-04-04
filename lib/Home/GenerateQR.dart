import 'package:flutter/material.dart';
import 'GeneratedQR.dart';

class GenerateQR extends StatefulWidget {
  @override
  _GenerateQRState createState() => _GenerateQRState();
}

TextEditingController myController = new TextEditingController();

class _GenerateQRState extends State<GenerateQR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Generate QR"),),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  controller: myController,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(color: Colors.red,fontSize: 15.0),
                    labelText: "Enter data fo generating QR Code",
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 15.0),
                    prefixIcon: Icon(Icons.link),
                  ),
                onEditingComplete: navigate,
                ),
              ),
               Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                    color: Colors.blue[900],
                    border: Border.all(color: Colors.blue[900], width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                      child: InkWell(
                      onTap: navigate,
                      child: Center(
                      child:Text("Receive",style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'avenir',
                  ),),
                      ),
                   ),
                    ),
          ],
        ),
      ),
    );
  }
  void navigate(){Navigator.push(context, MaterialPageRoute(builder: (context)=> GeneratedQR(myController.text)));}
}