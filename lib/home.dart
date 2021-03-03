import 'package:flutter/material.dart';
import 'package:heisenboxapp/widgets/home_card.dart';

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
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }
  int _currentIndex = 0;
  // final tabs = [
  //   Home(),
  //   Chat(),
  //   Profile(),
  // ];

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Top Search Bar Side Start----------------------
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(
                  color: Color(0xFFFF5500),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                alignment: Alignment(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 24,
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                        child: TextFormField(
                          controller: textController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontFamily: 'Lato',
                              color: Color(0xFFFFEBEE),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: 'Lato',
                            color: Color(0xFFFFEBEE),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        HomeCard(
                          username: '@antieguliz',
                          postTime: '2 minutes ago',
                          contentColor: Color(0xffff5500),
                          mainContent: 'Bir gruba katıldı.',
                          subContent: 'Social',
                          imagePath: 'assets/avatar/person2.png',
                        ),
                        HomeCard(
                          username: '@antiebatu',
                          postTime: '4 days ago',
                          contentColor: Color(0xff00cba9),
                          mainContent: 'İçerik oluşturdu.',
                          subContent: 'Back Documentation',
                          imagePath: 'assets/avatar/person1.png',
                        ),
                        HomeCard(
                          username: '@antiesami',
                          postTime: '4 days ago',
                          contentColor: Color(0xffff5500),
                          mainContent: 'Bir gruba katıldı.',
                          subContent: 'Social',
                          imagePath: 'assets/avatar/person5.png',
                        ),
                        HomeCard(
                          username: '@antiezeynep',
                          postTime: '4 days ago',
                          contentColor: Color(0xffff5500),
                          mainContent: 'Bir gruba katıldı.',
                          subContent: 'Social',
                          imagePath: 'assets/avatar/person6.png',
                        ),
                        HomeCard(
                          username: '@antiemuti',
                          postTime: '4 days ago',
                          contentColor: Color(0xffff5500),
                          mainContent: 'Bir gruba katıldı.',
                          subContent: 'Social',
                          imagePath: 'assets/avatar/person4.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          //Main Side ----------------------
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffff5500),
        iconSize: 20,
        selectedItemColor: Colors.white,
          items: [
           new BottomNavigationBarItem(
             icon: new Icon(Icons.home),
             label: 'Home',
             backgroundColor: Color(0xffff5500),
           ),
           new BottomNavigationBarItem(
             icon: new Icon(Icons.chat),
             label: 'Chat',
             backgroundColor: Color(0xffff66c4),
           ),
           new BottomNavigationBarItem(
             icon: new Icon(Icons.emoji_people),
             label: 'Profile',
             backgroundColor: Color(0xffFFDE59),
           ),
         ],
         currentIndex: _currentIndex,
      ),
    );
  }
}
