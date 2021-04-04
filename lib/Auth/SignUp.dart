import 'package:e_wallet/Service/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_wallet/Home/HomePage.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          "Creat Account",
          style: TextStyle(
            fontSize: 26,
            fontFamily: 'avenir',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "First name",
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                    labelText: "First Name",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Last name",
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                    labelText: "Last Name",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "email@gmail.com",
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    //hintText: "UserName or Phone Number",
                    labelText: "Phone Number",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Atleast 4-8 characters",
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                    labelText: "PassWord",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Atleast 4-8 characters",
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                    labelText: "Confirm PassWord",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: InkWell(
                    onTap: () {
                      context.read<AuthService>().SignUp(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim());
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
