import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:heisenboxapp/login.dart';


const items = [
  Color(0xffff66c4),
  Color(0xff00cba9),
  Color(0xff38b6ff),
  Color(0xffFFDE59),
  Color(0xffff5500),
  Color(0xff273036),
];

var icerik = [
  "Welcome to\nAnt Notes",
  "To be as\nhardworking\nas ants, think simple.",
  "Categorize and better manage your\nto-do list.",
  "Focus more\nby keeping\nshorter periods.",
  "Get inspired\nby ants and work\nhard to be an ant.",
  "To become an ant,\nregister now and\njoin other ants."
];

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlowPager(),
    ),
  );
  
}

class FlowPager extends StatefulWidget {
  @override
  _FlowPagerState createState() => _FlowPagerState();
}

class _FlowPagerState extends State<FlowPager> {
  ValueNotifier<double> _notifier = ValueNotifier(0.0);
  final _button = GlobalKey();
  final _pageController = PageController();

  @override
  void initState() {
    _pageController.addListener(() {
      _notifier.value = _pageController.page;
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Custom Painter
          AnimatedBuilder(
            animation: _notifier,
            builder: (_, __) => CustomPaint(
              painter: FlowPainter(
                context: context,
                notifier: _notifier,
                target: _button,
                colors: items,
              ),
            ),
          ),

          // PageView
          PageView.builder(
            controller: _pageController,
            itemCount: items.length,
            itemBuilder: (c, i) => Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 200,left: 20),
                child: Text(
                  '${icerik[i]}',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Lato",
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top:50),
            child: Align(
              alignment: Alignment.topRight,
              child: FlatButton(
            child: Text("Skip",style: TextStyle(fontSize: 20,color:Colors.white,fontFamily: "Lato",fontWeight: FontWeight.w900),),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> LoginPage())
              );
            },
          ),
            ),
          ),

          // Anchor Button
          IgnorePointer(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 200),
                child: ClipOval(
                  child: AnimatedBuilder(
                    animation: _notifier,
                    builder: (_, __) {
                      final animatorVal =
                          _notifier.value - _notifier.value.floor();
                      double opacity = 0, iconPos = 0;
                      int colorIndex;
                      if (animatorVal < 0.5) {
                        opacity = (animatorVal - 0.5) * -2;
                        iconPos = 80 * -animatorVal;
                        colorIndex = _notifier.value.floor() + 1;
                      } else {
                        colorIndex = _notifier.value.floor() + 2;
                        iconPos = -80;
                      }
                      if (animatorVal > 0.9) {
                        iconPos = -250 * (1 - animatorVal) * 10;
                        opacity = (animatorVal - 0.9) * 10;
                      }
                      colorIndex = colorIndex % items.length;
                      return SizedBox(
                        key: _button,
                        width: 80,
                        height: 80,
                        child: Transform.translate(
                          offset: Offset(iconPos, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: items[colorIndex],
                            ),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.white.withOpacity(opacity),
                              size: 30,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

class FlowPainter extends CustomPainter {
  final BuildContext context;
  final ValueNotifier<double> notifier;
  final GlobalKey target;
  final List<Color> colors;

  RenderBox _renderBox;

  FlowPainter({this.context, this.notifier, this.target, this.colors});

  @override
  void paint(Canvas canvas, Size size) {
    final screen = MediaQuery.of(context).size;
    if (_renderBox == null)
      _renderBox = target.currentContext.findRenderObject();
    if (_renderBox == null || notifier == null) return;
    final page = notifier.value.floor();
    final animatorVal = notifier.value - page;
    final targetPos = _renderBox.localToGlobal(Offset.zero);
    final xScale = screen.height * 8, yScale = xScale / 2;
    var curvedVal = Curves.easeInOut.transformInternal(animatorVal);
    final reverseVal = 1 - curvedVal;

    Paint buttonPaint = Paint(), bgPaint = Paint();
    Rect buttonRect, bgRect = Rect.fromLTWH(0, 0, screen.width, screen.height);

    if (animatorVal < 0.5) {
      bgPaint..color = colors[page % colors.length];
      buttonPaint..color = colors[(page + 1) % colors.length];
      buttonRect = Rect.fromLTRB(
        targetPos.dx - (xScale * curvedVal), //left
        targetPos.dy - (yScale * curvedVal), //top
        targetPos.dx + _renderBox.size.width * reverseVal, //right
        targetPos.dy + _renderBox.size.height + (yScale * curvedVal), //bottom
      );
    } else {
      bgPaint..color = colors[(page + 1) % colors.length];
      buttonPaint..color = colors[page % colors.length];
      buttonRect = Rect.fromLTRB(
        targetPos.dx + _renderBox.size.width * reverseVal, //left
        targetPos.dy - yScale * reverseVal, //top
        targetPos.dx + _renderBox.size.width + xScale * reverseVal, //right
        targetPos.dy + _renderBox.size.height + yScale * reverseVal, //bottom
      );
    }

    canvas.drawRect(bgRect, bgPaint);
    canvas.drawRRect(
      RRect.fromRectAndRadius(buttonRect, Radius.circular(screen.height)),
      buttonPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}


