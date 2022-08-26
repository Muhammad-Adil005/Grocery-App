import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Location%20Module/location.dart';

class homescreenAppbar extends StatelessWidget {
  const homescreenAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(

          backgroundColor: Color(0xffF3F5F7),
          elevation: 0,
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(

                      "Good morning",
                      style: GoogleFonts.dmSans(
                          fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff979899)
                      )
                  ),
                  Text(

                      "Amelia Barlow",
                      style: GoogleFonts.dmSans(
                          fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff06161C)
                      )
                  ),
                ],)
              ],
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return Container(
                width: 44,
                height: 44,
                child: CircleAvatar(
                  backgroundColor: Color(0xff6A8071),
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
              );
              // return Container(
              //   // height: MediaQuery.of(context).size.height*0.5,
              //     decoration: BoxDecoration(
              //         color: Colors.black,
              //       shape: BoxShape.circle,
              //       // borderRadius: BorderRadius.circular(30)
              //     ),
              //     margin: EdgeInsets.only(top: 10),
              //
              //     child:  CircleAvatar(
              //
              //
              //       // // maxRadius: 40,
              //       // radius: 4,
              //       backgroundColor: Color(0xff6A8071),
              //       foregroundImage: AssetImage('assets/food.png'),
              //
              //       // child: Container(
              //       //   width: MediaQuery.of(context).size.width*0.5,
              //       //   height: MediaQuery.of(context).size.height*0.5,
              //       //   decoration: BoxDecoration(
              //       //       image: DecorationImage(image: AssetImage('assets/food.png'))
              //       //   ),
              //       // ),
              //     )
              // );
            },
          ),
          actions: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>locationScreen()));
                  },
                  child: Container(
                    // height: MediaQuery.of(context).size.height*0.05,
                    height: 42,



                    // margin: EdgeInsets.only(right: 25),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        // color: Colors.blue,
                        // shape: BoxShape.
                        borderRadius: BorderRadius.circular(67)
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 18,
                          width: 15,
                          margin: EdgeInsets.only(left: 16,bottom: 12,top: 12),

                          // width: MediaQuery.of(context).size.width*0.1,
                          // height: MediaQuery.of(context).size.height*0.1,

                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/location_vector.png'))
                          ),
                        ),
                        SizedBox(width: 8,),
                        Text('My Flat',style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black,

                        ),),
                        SizedBox(width: 8,),
                        GestureDetector(
                          onTap: () {

                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 16),
                            height: 10,
                            width: 6,

                            // width: MediaQuery.of(context).size.width*0.1,
                            // height: MediaQuery.of(context).size.height*0.1,
                            decoration: BoxDecoration(



                                image: DecorationImage(image: AssetImage('assets/appbar_select_vector.png',))
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),

    );
  }
}
