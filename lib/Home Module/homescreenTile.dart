import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Home%20Module/discountsScreen.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class homescreenTile extends StatefulWidget {
  const homescreenTile({Key? key}) : super(key: key);

  @override
  State<homescreenTile> createState() => _homescreenTileState();
}

class _homescreenTileState extends State<homescreenTile> {


  List a = [
    "assets/food.png",
    "assets/food.png",

  ];
  List b = [
    "Ramadan offer",
    "Ramadan offer",
  ];
  List c = [
    "Get 25%",
    "Get 25%",
  ];
  List d = [
    "Grab Offer > ",
    "Grab Offer > ",
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color(0xffF5F5F5),
        child: ListView.separated(

            separatorBuilder: (context, index) {
              return SizedBox(
                // width: 12,
                // height: 12,
              );
            },
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: a.length,

            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.hei6ght*0.2,
                height: 158,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  // color: Colors.blue,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        // Colors.black12,
                        // Colors.green
                        Color(0xffF3F5F7),
                        Colors.white
                      ]),

                    // borderRadius: BorderRadius.circular(15)
              ),

                child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Stack(

                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.922,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              // borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0),bottomLeft: Radius.circular(16.0),),
                            borderRadius: BorderRadius.circular(16),
                              // color: Colors.blue,
                              image: DecorationImage(
                                  image: AssetImage(a[index]), fit: BoxFit.fill)),
                        ),

                        Positioned(
                          right: 0.0,
                          // height: MediaQuery.of(context).size.height*0.2,
                          // child: ClipPath(
                          //     clipper: ProsteBezierCurve(
                          //       position: ClipPosition.bottom,
                          //       list: [
                          //         BezierCurveSection(
                          //           start: Offset(screenWidth, 0),
                          //           top: Offset(screenWidth / 2, 30),
                          //           end: Offset(0, 0),
                          //         ),
                          //       ],
                          //     ),
                          //     child: Container(
                          //       color: Colors.blue,
                          //     )
                          // )
                          child: Container(

                            // padding: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Color(0xff23AA49),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(45.0),bottomLeft: Radius.circular(45),bottomRight: Radius.circular(16.0),topRight: Radius.circular(16.0)),),
                            width: MediaQuery.of(context).size.width*0.40,
                            height: 158,
                            // height: screenHeight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(b[index],style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500, fontSize: 12
                                ),),
                                SizedBox(
                                  height: 7,
                                ),

                                Text(c[index],style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500, fontSize: 32)),
                                SizedBox(height: 8,),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DiscountScreen()));

                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 107,
                                    // height: MediaQuery.of(context).size.height*0.04,
                                    // width: MediaQuery.of(context).size.width*0.25,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(100)
                                    ),
                                    child:Text(d[index],style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w500, fontSize: 14,color: Color(0xff6BA821)
                                    ),), ),
                                )

                              ],
                            ),
                            // color: Colors.blue,
                          ),
                        ),
                      ],
                    ),



                  ],
                ),
              );

            }),
      ),
    );
  }
}
