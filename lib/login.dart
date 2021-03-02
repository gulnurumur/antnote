import 'package:flutter/material.dart';
import 'package:heisenboxapp/account.dart';
import 'package:heisenboxapp/home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color backColor = Color(0xff273036);
  Color borderColor= Color(0xffff66c4);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: backColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'Hello,\n',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Lato",
                      color: borderColor,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 155.0, 0.0, 0.0),
                  child: Text(
                    'Welcome again',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Lato",
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:35.0,left: 30.0,right: 20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                 TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),          
                    )
                  ),
                  obscureText: true,
                ),
                SizedBox(height:5),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(top:15.0,left: 20.0),
                  child: InkWell(
                    child: Text("Forgot password ?",style: TextStyle(
                      color: borderColor,
                      fontFamily: "Lato",
                      fontSize: 14,
                      decoration: TextDecoration.underline
                    ),),
                  ),
                ),
                SizedBox(height: 40.0,),
                Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.pink,
                    color: borderColor,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage() ),
                        );
                      },
                      child: Center(
                        child: Text(
                          "Login",style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CreateAccountPage())
                    );
                  },
                  child: Center(
                    child: Text("Create an account",style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}