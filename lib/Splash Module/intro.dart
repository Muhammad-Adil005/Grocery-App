import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Splash%20Module/login_screen.dart';

class introScreen extends StatelessWidget {
  const introScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height-20;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: screenWidth,
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 45,
                        height: 39,
                        margin: EdgeInsets.only(right: 26),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/leaf1.png'))),
                      )
                    ],
                  ),
                  Container(
                    height: screenHeight * 0.07,
                    child: Image(image: AssetImage('assets/logo.png')),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth * 0.9,
              child: Text(
                'Get your groceries delivered to your home',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: Color(0xff061616),
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              width: screenWidth * 0.9,
              child: Text(
                'The best delivery app in town for delivering your daily fresh groceries',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: Color(0xff979899),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  InkWell(

                    child: Container(
                      width: screenWidth * 0.48,
                      height: 53,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                                ,                              ),
                              child: Container(
                                height: 430,
                                width: MediaQuery.of(context).size.width*0.95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                )
                                ,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Allow 'Grocero' to use",style: GoogleFonts.dmSans(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("your location + enable",style: GoogleFonts.dmSans(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800
                                          ),),
                                        ],
                                      ), Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(" Notifications?",style: GoogleFonts.dmSans(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800
                                          ),),
                                        ],
                                      ),

                                      SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("we use it show your nearby",style: GoogleFonts.dmSans(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("restaurants and a map to pick up",style: GoogleFonts.dmSans(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("orders",style: GoogleFonts.dmSans(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400
                                          ),),
                                        ],
                                      ),
                                      SizedBox(height: 60,),
                                      Divider(thickness: 2,),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap:(){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>loginScreen()));
                                              },
                                              child: Text("Allow Once",style: GoogleFonts.dmSans(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w800,
                                                  color:Colors.blue,
                                              ),),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(thickness: 2,),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap:(){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>loginScreen()));
                                              },
                                              child: Text("Allow While Using App",style: GoogleFonts.dmSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w800,
                                                color:Colors.blue,
                                              ),),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(thickness: 2,),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap:(){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>loginScreen()));
                                              },
                                              child: Text("Dont Allow",style: GoogleFonts.dmSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w800,
                                                color:Colors.blue,
                                              ),),
                                            ),
                                          ],
                                        ),
                                      ),




                                    ],
                                  ),
                                ),),
                            );});

                          },

                        child: Text(
                          'Shop now',
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 45,
                        height: 39,
                        // margin: EdgeInsets.only(top: 31,right: 26,bottom: 22),

                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/leaf3.png'))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 33,
                        height: 28,
                        margin: EdgeInsets.only(
                          left: 30,
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/leaf2.png'))),
                      ),
                    ],
                  ),
                  Container(
                    height: screenHeight * 0.35,
                    width: screenWidth,
                    // margin: EdgeInsets.only(top: 545,),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/food.png'),
                            fit: BoxFit.fill)),
                    // child: Text('LOGO HERE',style: TextStyle(fontSize: 36,color: Color(0xff3F2037)),)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}