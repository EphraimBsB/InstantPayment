import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CashBack.dart';
import 'Flight.dart';
import 'More.dart';
import 'Phone.dart';
import 'SendMoney.dart';
import 'ReceiveMoney.dart';
import 'Electricity.dart';
import 'Movie.dart';
import 'ScanQR.dart';
import 'GenerateQR.dart';
import 'Profile.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );

  }
}
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blueGrey,
      drawer: ProfilDrawer(),
      appBar: AppBar(
         title: Text("eWallet", style: TextStyle(
                 color: Colors.blue[900],
                    fontSize:25,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'ubuntu',
                  ),),
      backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Account Overview", style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              fontFamily: 'avenir',
            ),),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blue[700],
              ),
                child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue[800], width: 2),
                         // color: Colors.blue[900]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             PopupMenuButton(
                               color:Colors.blueGrey,
                               itemBuilder: (context)=>[
                                 PopupMenuItem(child: ListTile(
                                       leading: Icon(Icons.comment_bank),
                                       title: Text('DTB Bank\t\t\t\t', style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),),
                                      onTap: (){},
                                 ),),
                               ],
                               child: Icon(Icons.arrow_drop_down_rounded,size: 35,)
                               ),
                            Text('DTB Bank\t\t\t\t', style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),),
                          ],
                        ),
                          ),
                          Container(
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text('\t\t260,000', style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[800],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text('USD', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),),
                            InkWell(
                                      child: Icon(
                                    Icons.arrow_drop_down_rounded,size: 30,),
                                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SendingMoney()));},
                                  ),

                          ],
                        ),
                          ),
                        SizedBox(height: 5,),
                        Text('Current Balance', style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
              ),
            SizedBox(height: 20,),
            Text("Send Money",style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'avenir',
                ),),
                SizedBox(height: 10,),
            Row(
             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Container(
              height: 40,
              width: 180,
              decoration: BoxDecoration(
              border: Border.all(color: Colors.blue[900], width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextField(
                    decoration: InputDecoration(
                    hintText: "Enter Amount to Send",
                    border: InputBorder.none,
                    fillColor: Colors.blueAccent[500],
                    filled: true,
                    suffixIcon:IconButton(
                      icon: Icon(
                        Icons.qr_code_scanner_sharp),
                        color: Colors.black,
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ScanQR()));},
                    ),
                    ),
                    keyboardType: TextInputType.number,
                    ),
                ),
                SizedBox(width: 5,),
                Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                    color: Colors.blue[900],
                    border: Border.all(color: Colors.blue[900], width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                      child: InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SendingMoney()));},
                      child: Center(
                      child:Text("Send",style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'avenir',
                  ),),
                      ),
                   ),
                    ),
                    SizedBox(width: 5,),
                     Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                    color: Colors.blue[900],
                    border: Border.all(color: Colors.blue[900], width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                      child: InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> GenerateQR()));},
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
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue[900],
                    ),
                    child: Icon(Icons.add, size: 40,),
                  ),
                  avatarWidget("male1", "Mike"),
                  avatarWidget("male2", "Joseph"),
                  avatarWidget("male3", "Ephraim"),
                  avatarWidget("female1", "Josephine"),
                  avatarWidget("female2", "Winny"),
                ],
              ),
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Services', style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                    fontFamily: 'avenir',
                ),),
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(Icons.dialpad),
                ),
              ],
            ),
            Expanded(
              child: GridView.count(crossAxisCount: 5,
                childAspectRatio: 0.7,
                children: <Widget>[
                  serviceWidget("sendMoney","Send\nMoney", SendingMoney()),
                  serviceWidget("receiveMoney","Receive\nMoney",ReceiveMoney()),
                  serviceWidget("phone","Phone\nRecharge",Phone()),
                  serviceWidget("electricity","Electricity\nBill",Electricity()),
                  serviceWidget("tag","CashBack\nOffer",CashBack()),
                  serviceWidget("movie","Movie\nTicket",Movie()),
                  serviceWidget("flight","Flight\nTicket",Flight()),
                  serviceWidget("more","More\n",More()),
                ],
              ),
            ),
          ],
        ),
        ),
      );
  }
  Column serviceWidget(String img, String name, var page){
    return Column(
       children: <Widget>[
         Expanded(
           child: InkWell(
             onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> page));},
             child: Container(
               margin: EdgeInsets.all(4),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(10)),
                 color: Colors.blue[700],
               ),
               child:Center(
                 child: Container(
                   margin: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     image: DecorationImage(image: AssetImage('assets/$img.png'))
                   ),
                 ),
               ),
             ),
           ),
         ),
         SizedBox(height: 3,),
         Text(name, style: TextStyle(
           fontSize: 12,
           fontFamily: 'avenir',
           fontWeight: FontWeight.w700,
         ),textAlign: TextAlign.center,)
       ],
    );
  }

  Container avatarWidget(String img, String name ){
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 90,
      width: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.blue[700],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('assets/$img.jpg'),
                fit: BoxFit.contain,
              ),
              border: Border.all(color: Colors.black, width: 2),
            ),
          ),
          Text(name, style: TextStyle(
            fontSize: 14,
            fontFamily: 'avenir',
            fontWeight: FontWeight.w700,
          ),),
        ],
      ),
    );
  }
}

class ProfilDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Container(
        color: Colors.blueGrey, 
        child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            
            child: Column(
              children:[
                Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueGrey,
                            image: DecorationImage(image: AssetImage('assets/female2.jpg'),
                            fit: BoxFit.contain,
                            ),
                          ),
                        ),
              SizedBox( height: 5,),
              Text("Scarlette Johnson",style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),),
              ],
            ),
            decoration: BoxDecoration(color:Colors.blueGrey,),
        ),
        ListTile(
          title: Text("Account"),
          onTap: (){},
        ),
         ListTile(
          title: Text("Profile"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));},
        ),
         ListTile(
          title: Text("Trasantions"),
          onTap: (){},
        ),
         ListTile(
          title: Text("Status"),
          onTap: (){},
        ),
         ListTile(
          title: Text("Settings"),
          onTap: (){},
        ),
         ListTile(
          title: Text("Help"),
          onTap: (){},
        )
        ],
      ),
      )  
    );
  }
}