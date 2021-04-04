import 'package:barcode_scan/barcode_scan.dart';
import 'package:barcode_scan/model/model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ScanQR extends StatefulWidget {
  ScanQR({Key key}): super( key: key);
  @override
  _ScanQRState createState() => _ScanQRState();
}

String qrData = "No data found";
var data;
bool hasdata = false;

class _ScanQRState extends State<ScanQR> {
  @override
  Widget build(BuildContext context) {
    return Hero( tag: "ScanQR", child: Scaffold(
      appBar: AppBar(title: Text("QR Scanner"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: Text("Raw Data:${(qrData)}",
                textAlign: TextAlign.center,
                style:TextStyle(fontSize: 20,),),),
              IconButton(icon: Icon(Icons.launch_outlined,),onPressed: hasdata?()async{
                if(await canLaunch(qrData)){ await launch(qrData);}
                else{ throw "Could ot Launch";}
              }: null
              ),
              ],
            ),
            SizedBox(height: 15,),
            Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                    color: Colors.blue[900],
                    border: Border.all(color: Colors.blue[900], width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                      child: InkWell(
                      child: Center(
                      child:Text("Scan QR",style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'avenir',),),
                      ),
                      onTap: ()async{
                        var option = ScanOptions(autoEnableFlash:true);
                         data = await BarcodeScanner.scan(options:option);
                         setState(() {
                           qrData = data.rawContent.toString();
                           hasdata = true;
                         });
                      },
                   ),
                    ),
          ],
        ),
      ),
    ),
      
    );
  }
}