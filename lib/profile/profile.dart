import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/profile/editProfile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 215,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff181928).withOpacity(0.80)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  SizedBox(height: 60,),
                  Row(

                    children: [
                      Text("My Profile", textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),),
                    ],
                  ),
                  SizedBox(height: 60,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                                "assets/Ellipse 154.png"),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Micheal Sam", textAlign: TextAlign.start,
                                style: GoogleFonts.outfit(fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),),
                              Text(
                                "+01 65841542265", textAlign: TextAlign.start,
                                style: GoogleFonts.roboto(fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),),


                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
                        },
                        child: Container(
                          height: 34,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffFFFFFF).withOpacity(0.15),
                          ),
                          child: Center(
                            child: Text("Edit Profile", textAlign: TextAlign
                                .start, style: GoogleFonts.outfit(fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),),

                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(

              children: [
                Text("My Products", textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 20.0,
                      childAspectRatio: 2 / 3,
                    ), itemBuilder: (context, index) {
                  return

                    Container(
                      width: 140,


                      // margin: EdgeInsets.only(left: 10,),
                      decoration: BoxDecoration(
                          color: Color(0xffF3F5F7),
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/tomato.png")
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0, bottom: 12, right: 12,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [ Text("Bell Pepper Red", style: GoogleFonts
                                  .dmSans(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700
                              ),),
                                Text("1kg, 6£", style: GoogleFonts.dmSans(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700
                                ),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 60,
                                      // margin: EdgeInsets.only(left: 10),
                                      child: Text("", style: GoogleFonts.dmSans(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500
                                      ),),
                                    ),
                                    // InkWell(
                                    //   onTap: (){
                                    //     // Navigator.push(
                                    //     //     context,
                                    //     //     MaterialPageRoute(
                                    //     //         builder: (context) => StoreInformation()));
                                    //   },
                                    //   child: Container(
                                    //     height: 30,
                                    //     width: 30,
                                    //     decoration: BoxDecoration(
                                    //       color: Colors.green,
                                    //       shape: BoxShape.circle,
                                    //     ),
                                    //     child: Center(child: Icon(Icons.system_update_alt,color: Colors.white,size: 17,)),
                                    //   ),
                                    // ),
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => ItemDetails()));
                                      },
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(child: Icon(
                                          Icons.add, color: Colors.white,)),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],

                      ),
                    );

                }),
              ),
            ),
          )

        ],
      ),
    );
  }
}
