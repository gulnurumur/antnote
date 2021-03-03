import "package:flutter/material.dart";
import 'package:heisenboxapp/home.dart';


class CreateCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new CategoryCard(),
    );
  }
}

class CategoryCard extends StatefulWidget {
  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  Color backColor = Color(0xff1A9D38);
  Color labelColor = Color(0xff37474f);
  Color borderColor = Color(0xffff00d1);
  String _selected;
  List<Map> _colorJson = [
    {
      "id":0,
      "color": Color(0xffff00d1),
      "name": "Ant Pink",
    },
     {
      "id":1,
      "color": Color(0xff00ff86),
      "name": "Ant Green",
    },
     {
      "id":2,
      "color": Color(0xff0091ff),
      "name": "Ant Blue",
    },
     {
      "id":3,
      "color": Color(0xffffe000),
      "name": "Ant Yellow",
    },
     {
      "id":4,
      "color": Color(0xffff4600),
      "name": "Ant Red",
    },
     {
      "id":5,
      "color": Color(0xff37474f),
      "name": "Ant Dark Grey",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'Create Category',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Lato",
                      color: Colors.black,
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
                    labelText: "Category Name",
                    labelStyle: TextStyle(
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w700,
                        color: labelColor,
                        fontSize: 16),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: borderColor),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: labelColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(
                              isDense: true,
                              hint: new Text("Select Color"),
                              value: _selected,
                              onChanged: (String val) {
                                setState((){
                                  _selected = val;
                                });
                                print(_selected);
                              },
                              items: _colorJson.map((Map m) {
                                return new DropdownMenuItem<String>(
                                  value: m["id"].toString(),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: new BoxDecoration(
                                          color: m["color"],
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left:10),
                                        child: Text(m["name"]),
                                      ),
                                    ],
                                  ),
                                  );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0,),
                Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.pink,
                    color: borderColor,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        print("Card created..");
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage() ),
                        );
                      },
                      child: Center(
                        child: Text(
                          "I'm ok",style: TextStyle(
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
