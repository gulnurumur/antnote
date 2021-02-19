import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color borderColor = Color(0xffff00d1);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: borderColor,
        elevation: 0,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 20),
              child: Text(
                "Welcome, Gülnur",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Lato",
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/images/waves.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
