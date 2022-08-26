import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_picker/country_picker.dart';
import 'package:grocery/Home%20Module/home_screen.dart';
import 'package:grocery/Splash%20Module/numeric_buttons.dart';
// import 'numericButton.dart';

class VerificationScreen2 extends StatefulWidget {
  const VerificationScreen2({Key? key}) : super(key: key);

  @override
  State<VerificationScreen2> createState() => _VerificationScreen2State();
}

class _VerificationScreen2State extends State<VerificationScreen2> {


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height-20;
    return Scaffold(
      body: Container(
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 24),
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Color(0xff06161C),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                        side: BorderSide(color: Colors.white),
                        primary: Colors.white,
                        shadowColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              child: Image(
                image: AssetImage('assets/logo.png'),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                'Verification Code',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: Color(0xff06161C),
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                'Enter your verification ode',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: Color(0xff979899),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 2,width: 40,color: Colors.grey,),
                  Container(height: 2,width: 40,color: Colors.grey,),
                  Container(height: 2,width: 40,color: Colors.grey,),
                  Container(height: 2,width: 40,color: Colors.grey,),
                  Container(height: 2,width: 40,color: Colors.grey,),
                  Container(height: 2,width: 40,color: Colors.grey,)

                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 53,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => homeScreen()));
                },
                child: Text(
                  'Continue',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff23AA49),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
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