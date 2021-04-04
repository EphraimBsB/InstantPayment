import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWithSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeWithSidebar(),
    );
  }
}
class homeWithSidebar extends StatefulWidget {
  @override
  _homeWithSidebarState createState() => _homeWithSidebarState();
}

class _homeWithSidebarState extends State<homeWithSidebar>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.blueGrey,
    body: Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width*0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
                    color: Colors.blueGrey[600],
                  ),
                  child: Center(
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
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
                        SizedBox(width: 10,),
                        Text("Scarlette Johnson",style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  navigatorTitle("Home", true),
                  navigatorTitle("Profile", false),
                  navigatorTitle("Accounts", false),
                  navigatorTitle("Transaction", false),
                  navigatorTitle("Status", false),
                  navigatorTitle("Setting", false),
                  navigatorTitle("Help", false),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.power_settings_new,
                    size: 30,
                  ),
                  Text("LogOut", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),)
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(10),
              child: Text("Ver 2.0.1", style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),),
            ),
          ],
        ),
      ],
    ),
    );
  }
  Row navigatorTitle(String name, bool isSelected){
   return Row(
     children: <Widget>[
       (isSelected)? Container(
         width: 5,
         height: 60,
         color: Colors.blue[700],
       ): Container(width: 5,
       height: 60,),
       SizedBox(width: 10, height: 60,),
       Text(name, style: TextStyle(
         fontSize: 16,
         fontWeight: (isSelected)? FontWeight.w700: FontWeight.w400
       ),),
     ],
   );
  }
}
