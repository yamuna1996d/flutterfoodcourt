import 'package:flutter/material.dart';
import 'package:foodcourt/Screens/Category.dart';
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';
class AnimatedCB extends StatefulWidget {
  @override
  _AnimatedCBState createState() => _AnimatedCBState();
}

class _AnimatedCBState extends State<AnimatedCB>
   {
 

  @override
  Widget build(BuildContext context) {
     return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Categoryscreen()
      )
    );
  }

  initScreen(BuildContext context) {

    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("assets/ba.png"), fit: BoxFit.cover,),
          ),
        ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("assets/cook.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "Let's go",
              style: GoogleFonts.pacifico(
                 color: Colors.green,
                fontWeight: FontWeight.bold,
              )
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
      ),
       ],
      ),
    );
  }
}
