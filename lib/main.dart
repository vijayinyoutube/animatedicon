import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController _animationIconController1,
      _animationIconController2,
      _animationIconController3,
      _animationIconController4;
  bool isarrowmenu = false;
  bool pauseplay = false;
  bool ellipsissearch = false;
  bool listview = false;
  @override
  void initState() {
    super.initState();
    _animationIconController1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 750),
      reverseDuration: Duration(milliseconds: 750),
    );
    _animationIconController2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 750),
      reverseDuration: Duration(milliseconds: 750),
    );
    _animationIconController3 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 750),
      reverseDuration: Duration(milliseconds: 750),
    );
    _animationIconController4 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 750),
      reverseDuration: Duration(milliseconds: 750),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isarrowmenu
                      ? _animationIconController1.reverse()
                      : _animationIconController1.forward();
                  isarrowmenu = !isarrowmenu;
                });
              },
              child: ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.5,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  width: 75,
                  height: 75,
                  child: Center(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.arrow_menu,
                      progress: _animationIconController1,
                      color: Colors.red,
                      size: 60,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pauseplay
                      ? _animationIconController2.reverse()
                      : _animationIconController2.forward();
                  pauseplay = !pauseplay;
                });
              },
              child: ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.5,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  width: 75,
                  height: 75,
                  child: Center(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.pause_play,
                      progress: _animationIconController2,
                      color: Colors.red,
                      size: 60,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  listview
                      ? _animationIconController3.reverse()
                      : _animationIconController3.forward();
                  listview = !listview;
                });
              },
              child: ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.5,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  width: 75,
                  height: 75,
                  child: Center(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.list_view,
                      progress: _animationIconController3,
                      color: Colors.red,
                      size: 60,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  ellipsissearch
                      ? _animationIconController4.reverse()
                      : _animationIconController4.forward();
                  ellipsissearch = !ellipsissearch;
                });
              },
              child: ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.5,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  width: 75,
                  height: 75,
                  child: Center(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.ellipsis_search,
                      progress: _animationIconController4,
                      color: Colors.red,
                      size: 60,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
