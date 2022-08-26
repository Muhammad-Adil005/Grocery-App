import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Item%20Module/item.dart';
class AllSellers extends StatelessWidget {
  const AllSellers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text("All Stores", textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),),
                Container(height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade200
                ),
                  child: Center(
                    child: Icon(Icons.search_sharp,color: Colors.black,size: 20,),
                  ),
                )
              ],
            ),
          ),

          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.all(18.0),
          //     child: Container(
          //       child: GridView.builder(
          //           padding: EdgeInsets.zero,
          //           itemCount: 6,
          //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //             crossAxisCount: 2,
          //             mainAxisSpacing: 10.0,
          //             crossAxisSpacing: 20.0,
          //             childAspectRatio: 2 / 3,
          //           ), itemBuilder: (context, index) {
          //         return
          //
          //           Container(
          //             width: 140,
          //
          //
          //             // margin: EdgeInsets.only(left: 10,),
          //             decoration: BoxDecoration(
          //                 color: Color(0xffF3F5F7),
          //                 borderRadius: BorderRadius.all(Radius.circular(15))
          //             ),
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.spaceAround,
          //               children: [
          //                 Container(
          //                   height: 100,
          //                   width: 100,
          //                   decoration: BoxDecoration(
          //                       image: DecorationImage(
          //                           image: AssetImage("assets/photo-1633332755192-727a05c4013d 1 (3).png")
          //                       )
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(
          //                     left: 16.0, bottom: 12, right: 12,),
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [ Text("Andrew K", style: GoogleFonts
          //                         .dmSans(
          //                         color: Colors.black,
          //                         fontSize: 14,
          //                         fontWeight: FontWeight.w700
          //                     ),),
          //                       SizedBox(height: 5,),
          //                       Text("1566 Johnny Lane", style: GoogleFonts.dmSans(
          //                           color: Colors.black.withOpacity(0.70),
          //                           fontSize: 11,
          //                           fontWeight: FontWeight.w700
          //                       ),),
          //                       Row(
          //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                         children: [
          //                           Container(
          //                             width: 60,
          //                             // margin: EdgeInsets.only(left: 10),
          //                             child: Text("", style: GoogleFonts.dmSans(
          //                                 color: Colors.black,
          //                                 fontSize: 15,
          //                                 fontWeight: FontWeight.w500
          //                             ),),
          //                           ),
          //                           // InkWell(
          //                           //   onTap: (){
          //                           //     // Navigator.push(
          //                           //     //     context,
          //                           //     //     MaterialPageRoute(
          //                           //     //         builder: (context) => StoreInformation()));
          //                           //   },
          //                           //   child: Container(
          //                           //     height: 30,
          //                           //     width: 30,
          //                           //     decoration: BoxDecoration(
          //                           //       color: Colors.green,
          //                           //       shape: BoxShape.circle,
          //                           //     ),
          //                           //     child: Center(child: Icon(Icons.system_update_alt,color: Colors.white,size: 17,)),
          //                           //   ),
          //                           // ),
          //                           InkWell(
          //                             onTap: () {
          //                               // Navigator.push(
          //                               //     context,
          //                               //     MaterialPageRoute(
          //                               //         builder: (context) => ItemDetails()));
          //                             },
          //                             child: Container(
          //                               height: 30,
          //                               width: 30,
          //                               decoration: BoxDecoration(
          //                                 color: Colors.green,
          //                                 shape: BoxShape.circle,
          //                               ),
          //                               child: Center(child: Icon(
          //                                 Icons.add, color: Colors.white,)),
          //                             ),
          //                           )
          //                         ],
          //                       )
          //                     ],
          //                   ),
          //                 )
          //               ],
          //
          //             ),
          //           );
          //
          //       }),
          //     ),
          //   ),
          // )
          Expanded(
            child: Container(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>itemScreen()));
                    },
                    child: Padding(

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
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
