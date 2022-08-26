import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  InkWell(
                      onTap:(){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                  SizedBox(width: 20,),
                  Text("Discount Offers",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),)
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
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
                                        Text("Asparagus, Bunch",style: GoogleFonts.dmSans(
                                            color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500
                                        ),),
                                        SizedBox(height: 5,),
                                        Text("Anlantic Salmon,sesame seaweed(gomma wakame),fresh mango,edamame..",style:  GoogleFonts.dmSans(
                                            color: Colors.black,fontSize: 11,fontWeight: FontWeight.w400
                                        ),),
                                        SizedBox(height: 5,),
                                        Text("Waltmart",style: GoogleFonts.dmSans(
                                            color: Colors.green,fontSize: 10,fontWeight: FontWeight.w500
                                        ),),

                                        Row(
                                          children: [
                                            Text("£556",style: GoogleFonts.dmSans(
                                              color: Colors.orange,fontSize: 17,fontWeight: FontWeight.w400,
                                            ),),
                                            SizedBox(width: 5),
                                            Text("£656",style :GoogleFonts.dmSans(
                                                decoration: TextDecoration.lineThrough,
                                                color: Colors.black,fontSize: 17,fontWeight: FontWeight.w400
                                            ),),
                                            Text(". Popular",style: GoogleFonts.dmSans(
                                              color: Colors.orange,fontSize: 17,fontWeight: FontWeight.w400,
                                            ),),

                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(height: 100,width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrangeAccent.shade100,
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(

                                            image: AssetImage("assets/tomato.png",)
                                        )
                                    )
                                    ,)
                                ],
                              ),
                            ),
                          ],
                        ) ,
                      ),
                    );
                  },
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
