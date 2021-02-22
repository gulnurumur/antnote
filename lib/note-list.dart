import 'package:flutter/material.dart';

class NoteLists extends StatefulWidget {
  @override
  _NoteListsState createState() => _NoteListsState();
}

class _NoteListsState extends State<NoteLists> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .15,
            decoration: BoxDecoration(
              color: Color(0xff37474f),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    child: IconButton(
                      onPressed: () {
                        print("Note settings clicked..");
                      },
                      icon: Icon(
                        Icons.view_headline_rounded,
                        color: Colors.white,
                      ),
                      iconSize: 26.0,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Do List",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lato",
                          fontSize: 32,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                ListTile(
                  dense: true,
                  selected: true,
                  onTap: () {
                    print("clicked");
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.white70,
                    child: Center(
                      child: Icon(
                        Icons.bolt,
                        color: Color(0xffffe000),
                        size: 34.0,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Note 1 listed..",
                    style: TextStyle(
                        color: Colors.grey[850],
                        fontFamily: "Lato",
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    "Note Tag",
                    style:
                        TextStyle(color: Colors.grey[400], fontFamily: "Lato"),
                  ),
                ),
                ListTile(
                  dense: true,
                  selected: true,
                  onTap: () {},
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Note 2 listed..",
                    style: TextStyle(
                        color: Colors.grey[850],
                        fontFamily: "Lato",
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    "Note Tag",
                    style:
                        TextStyle(color: Colors.grey[400], fontFamily: "Lato"),
                  ),
                ),
                ListTile(
                  dense: true,
                  selected: true,
                  onTap: () {},
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Note 3 listed..",
                    style: TextStyle(
                        color: Colors.grey[850],
                        fontFamily: "Lato",
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    "Note Tag",
                    style:
                        TextStyle(color: Colors.grey[400], fontFamily: "Lato"),
                  ),
                ),
                ListTile(
                  dense: true,
                  selected: true,
                  onTap: () {},
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Note 4 listed..",
                    style: TextStyle(
                        color: Colors.grey[850],
                        fontFamily: "Lato",
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    "Note Tag",
                    style:
                        TextStyle(color: Colors.grey[400], fontFamily: "Lato"),
                  ),
                ),
                ListTile(
                  dense: true,
                  selected: true,
                  onTap: () {},
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Note 5 listed..",
                    style: TextStyle(
                        color: Colors.grey[850],
                        fontFamily: "Lato",
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    "Note Tag",
                    style:
                        TextStyle(color: Colors.grey[400], fontFamily: "Lato"),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffff00d1),
        child: Icon(Icons.add),
        onPressed: () {
          print("Add Note ...");
        },
      ),
    );
  }
}
