import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class locationScreen extends StatelessWidget {
  const locationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: screenWidth,
              // child: MapSample(),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/map.png'),
                      fit: BoxFit.fill)
              ),
            ),
            Positioned(
              left: 24,
              top: 24,
              child: Container(
                height: 44,
                width: 44,
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
            ),
            Positioned.fill(
              bottom: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: EdgeInsets.only(left: 24, right: 24),
                    height: 383,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: screenHeight * 0.008,
                                width: screenWidth * 0.17,
                                decoration: BoxDecoration(
                                    color: Color(0xffE0E0E0),
                                    borderRadius: BorderRadius.circular(10)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // SizedBox(width: screenWidth*0.1,),
                              Text(
                                'On the way',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Color(0xff06161C),
                                ),
                              ),
                              Container(
                                height: 42,
                                padding: EdgeInsets.only(top: 12,bottom: 12,right: 16,left: 16),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xffF1F1F5)),
                                    borderRadius: BorderRadius.circular(67)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/clock_vector.png'))),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      '10 Min',
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff06161C)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: screenWidth * 0.28,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Order placed',
                                      style: GoogleFonts.dmSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff23AA49)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      height: 4,
                                      width: 106,
                                      decoration: BoxDecoration(
                                        color: Color(0xff23AA49),
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                width: screenWidth * 0.28,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'On the way',
                                      style: GoogleFonts.dmSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff979899)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      height: 4,
                                      width: 106,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Color(0xffE0E0E0),
                                              Color(0xff23AA49)
                                            ]),
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.28,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Delivered',
                                      style: GoogleFonts.dmSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff979899)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      height: 4,
                                      width: 106,
                                      decoration: BoxDecoration(
                                        color: Color(0xffE0E0E0),
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(

                                children: [
                                  Container(
                                    width: 44,
                                    height: 44,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xff6A8071),
                                      backgroundImage: AssetImage('assets/profile.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 17,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Your delievery here',style: GoogleFonts.dmSans(
                                          fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff979899)
                                      ),),
                                      Text('Abdulmalik Qasim',style: GoogleFonts.dmSans(
                                          fontSize: 16,fontWeight: FontWeight.w700
                                      ),),
                                    ],),

                                ],),
                              Row(
                                children: [
                                  Container(

                                    height: 44,
                                    width: 44,
                                    decoration: BoxDecoration(
                                        color: Color(0xffF3F5F7),
                                        borderRadius: BorderRadius.circular(100)
                                    ),
                                    child: GestureDetector(
                                      onTap: () {

                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        // width: 36,
                                        // height: 36,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          // color: Color(0xff23AA49),
                                        ),
                                        child: Image(image: AssetImage('assets/messeges_vector.png'),),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),



                                ],
                              )
                            ],),
                          SizedBox(
                            height: 16,
                          ),
                          Row(

                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xff6A8071),
                                  backgroundImage: AssetImage('assets/circle_vector.png'),
                                ),
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Store',style: GoogleFonts.dmSans(
                                      fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff979899)
                                  ),),
                                  Text('Insta Grocery Store',style: GoogleFonts.dmSans(
                                      fontSize: 16,fontWeight: FontWeight.w700
                                  ),),
                                ],),

                            ],),
                          SizedBox(
                            height: 14,
                          ),
                          Container(
                            height: 1,
                            width: screenWidth,
                            color: Colors.black12,
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Row(

                            children: [
                              Container(
                                width: 23,
                                height: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/location_vector.png'))
                                ),
                                ),
                              SizedBox(
                                width: 17,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Your place',style: GoogleFonts.dmSans(
                                      fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff979899)
                                  ),),
                                  Text('Queens Road London',style: GoogleFonts.dmSans(
                                      fontSize: 16,fontWeight: FontWeight.w700
                                  ),),
                                ],),

                            ],),

                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
