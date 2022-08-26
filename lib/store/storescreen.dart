import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Item%20Module/item.dart';
import 'package:grocery/store/storedetail.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Column(
        children: [
          SizedBox(height: 5,)
,         InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>itemScreen()));
            },
  child:   Padding(

              padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 10),

              child: Container(height: 130,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),

                  color: Colors.white,

                  boxShadow: [

                    BoxShadow(

                      color: Colors.grey.withOpacity(0.5),

                      spreadRadius: 1,

                      blurRadius: 4,

                      offset: Offset(0, 3), // changes position of shadow

                    ),

                  ],

                ),

                child:Column(

                  children: [

                    Padding(

                      padding: const EdgeInsets.all(8.0),

                      child: Row(



                        children: [

                          Expanded(

                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [

                                Text("TORTHAI",style: GoogleFonts.dmSans(

                                    color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500

                                ),),

                                // Row(
                                //
                                //   children: [
                                //
                                //     Text("£556",style: GoogleFonts.dmSans(
                                //
                                //       color: Colors.orange,fontSize: 17,fontWeight: FontWeight.w400,
                                //
                                //     ),),
                                //
                                //   ],
                                //
                                // ),

                                SizedBox(height: 5,),

                                Text("Shop for Food & Grocery in Shop by Brand.",style:  GoogleFonts.dmSans(

                                    color: Colors.black,fontSize: 11,fontWeight: FontWeight.w400

                                ),),



                              ],

                            ),

                          ),

                          SizedBox(width: 5,),

                          Container(height: 100,width: 100,

                            decoration: BoxDecoration(

                                color: Colors.deepOrangeAccent.shade100,

                                borderRadius: BorderRadius.circular(5),

                                image: DecorationImage(
                                  fit: BoxFit.fill,



                                    image: AssetImage("assets/download.jfif",)

                                )

                            )

                            ,)

                        ],

                      ),

                    ),



                  ],

                ) ,

              ),

            ),
),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 10),
            child: Container(height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Waltmart",style: GoogleFonts.dmSans(
                                  color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500
                              ),),

                              SizedBox(height: 5,),
                              Text("Shop for Food & Grocery in Shop by Brand.",style:  GoogleFonts.dmSans(
                                  color: Colors.black,fontSize: 11,fontWeight: FontWeight.w400
                              ),),

                            ],
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(height: 100,width: 100,
                          decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent.shade100,
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(

                                  fit: BoxFit.fill,



                                  image: AssetImage("assets/download.jfif",)
                              )
                          )
                          ,)
                      ],
                    ),
                  ),

                ],
              ) ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 10),
            child: Container(height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ulta",style: GoogleFonts.dmSans(
                                  color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500
                              ),),

                              SizedBox(height: 5,),
                              Text("Shop for Food & Grocery in Shop by Brand.",style:  GoogleFonts.dmSans(
                                  color: Colors.black,fontSize: 11,fontWeight: FontWeight.w400
                              ),),

                            ],
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(height: 100,width: 100,
                          decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent.shade100,
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(

                                  fit: BoxFit.fill,



                                  image: AssetImage("assets/download.jfif",)
                              )
                          )
                          ,)
                      ],
                    ),
                  ),

                ],
              ) ,
            ),
          ),


        ],
      );
  }
}
