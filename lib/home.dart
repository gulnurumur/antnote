import 'package:flutter/material.dart';
import 'package:heisenboxapp/widgets/create-card.dart';
import 'package:heisenboxapp/note-list.dart';
import 'package:heisenboxapp/widgets/category_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .25,
            decoration: BoxDecoration(
              color: Color(0xff273036),
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
                      height: 58,
                      width: 58,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        iconSize: 34.0,
                      ),
                    ),
                  ),
                  Text(
                    "Welcome,",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Lato",
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CardCategory(
                          categoryName: "Do",
                          categoryColor: Color(0xff00cba9),
                          press: () {
                            Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => NoteLists() ),
                        );
                          },
                        ),
                        CardCategory(
                          categoryName: "Delegate",
                          categoryColor: Color(0xff38b6ff),
                          press: () {
                           Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => NoteLists() ),
                        );
                          },
                        ),
                        CardCategory(
                          categoryName: "Decide",
                          categoryColor: Color(0xffFFDE59),
                          press: () {
                           Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => NoteLists() ),
                        );
                          },
                        ),
                        CardCategory(
                          categoryName: "Delete",
                          categoryColor: Color(0xffff5500),
                          press: () {
                           
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xffff66c4),
        icon: Icon(Icons.add),
        label: Text(
          "Create Card",
          style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.w700,fontSize: 16),
        ),
        onPressed: () {
           Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => CreateCard() ),
                        );
        },
      ),
    );
  }
}
