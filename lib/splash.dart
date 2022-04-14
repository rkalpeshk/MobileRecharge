import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.of(context).pushReplacementNamed("home"));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange.withOpacity(0.2),
        body: Container(
          child: Center(child: Text("Reachrge your Device",style: GoogleFonts.exo2(fontSize: 50.0,color: Colors.white),textAlign: TextAlign.center,)),
        ),
          bottomNavigationBar: Container(
             child: Text("Made in India\nBluePointer Pvt Ltd",style: GoogleFonts.exo2(fontSize: 30.0,color: Colors.blueGrey),textAlign: TextAlign.center,),
        ),
       ),
    );
  }
}
