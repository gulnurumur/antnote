import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String username;
  final String postTime;
  final Function press;
  final Color contentColor;
  final String mainContent;
  final String subContent;
  final String imagePath;
  const HomeCard(
      {Key key,
      this.username,
      this.postTime,
      this.press,
      this.contentColor,
      this.mainContent,
      this.subContent,
      this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment(0, 0),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 15, 0, 0),
                                            child: Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      imagePath),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 20, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  username,
                                                  style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    color: Color(0xFFFF5500),
                                                  ),
                                                ),
                                                Text(
                                                  postTime,
                                                  style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    color: Color(0xFF273036),
                                                    fontSize: 13,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: IconButton(
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                          icon: Icon(
                                            Icons.keyboard_control_outlined,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          iconSize: 20,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                mainContent,
                                                style: TextStyle(
                                                  fontFamily: 'Lato',
                                                  fontSize: 15,
                                                ),
                                              ),
                                              Text(
                                                subContent,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontFamily: 'Lato',
                                                  color: contentColor,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
  }
}
