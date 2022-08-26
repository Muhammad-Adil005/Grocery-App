import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Splash%20Module/intro.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetologinScreen();
  }
  void _navigatetologinScreen() async{
    Timer(Duration (seconds:5),(() => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>introScreen()))));
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              height: MediaQuery.of(context).size.height*0.5,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo.png'))
              ),
            )
            // Text('grocero',style: GoogleFonts.dmSans(color: Color(0xff3F2037),fontSize: 35,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
