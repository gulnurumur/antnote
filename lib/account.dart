import 'package:flutter/material.dart';

import 'home.dart';

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateAccount(),
    );
  }
}

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  Color backColor = Color(0xff273036);
  Color borderColor = Color(0xffff66c4);
  String groupColor = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: backColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 110.0, 0.0, 0.0),
                  child: Text(
                    "Go on,\n",
                    style: TextStyle(
                      color: borderColor,
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Lato",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 155.0, 0.0, 0.0),
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Lato",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 30.0, right: 20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Username:",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email:",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password:",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password again:",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left:0),
                  child: Row(
                    children: [
                      Radio(
                          value: "accept",
                          activeColor: borderColor,
                          groupValue: groupColor,
                          onChanged: (val) {
                            groupColor = val;
                            setState(() {});
                          }),
                      Text(
                        "I'm accept user data privacy.",
                        style:
                            TextStyle(color: Colors.white, fontFamily: "Lato",fontSize: 14),
                      ),
                      GestureDetector(
                        onTap: (){
                          print("Details..");
                        },
                        child: Text(
                        "Details",
                        style:
                            TextStyle(color: borderColor, fontFamily: "Lato",fontSize: 14),
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
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
                          "I'm ready",style: TextStyle(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
