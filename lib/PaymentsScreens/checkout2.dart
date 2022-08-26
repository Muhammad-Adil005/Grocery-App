import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Home%20Module/home_screen.dart';
class CheckOut2 extends StatelessWidget {
  const CheckOut2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.035,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Cart",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Checkout",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 37,
                width: 335,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 25,
                        width: 116,
                        decoration: BoxDecoration(
                          color: Color(0xff23AA49),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text("Delivery",style: GoogleFonts.dmSans(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.white),),
                        ),

                      ),
                      Text("Pick Up",style: GoogleFonts.dmSans(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                    ],
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Locations",
                  hintStyle: GoogleFonts.dmSans(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 11),
                  suffixIcon: Icon(Icons.arrow_forward_ios_rounded,size: 20,),
                  prefixIcon: Icon(Icons.add_location)
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText:"Leave at Door",
                    labelStyle:GoogleFonts.dmSans(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 11),
                    hintText: "Add note:",
                    hintStyle: GoogleFonts.dmSans(fontWeight: FontWeight.w500,fontSize: 11,color:Colors.green),
                    suffixIcon: Icon(Icons.arrow_forward_ios_rounded,size: 20,),
                    prefixIcon: Icon(Icons.sensor_door)
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Delivery Time",
                    hintStyle: GoogleFonts.dmSans(fontWeight: FontWeight.w700,fontSize: 15,color:Colors.black),
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("15-30 Min(s)"),
                      ],
                    )
                    
                ),

              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(

                decoration: InputDecoration(
                  enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      )

                  ),
                  focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      )

                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    )

                  ),
                    labelStyle: GoogleFonts.dmSans(fontWeight: FontWeight.w500,fontSize: 12,color:Colors.black),
                    labelText: "Priority",
                    hintText: "Delivered Directly to you",
                    hintStyle: GoogleFonts.dmSans(fontWeight: FontWeight.w300,fontSize: 12,color:Colors.black),


                ),

              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.015,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(

                decoration: InputDecoration(
                  enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      )

                  ),
                  focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      )

                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      )

                  ),
                  labelStyle: GoogleFonts.dmSans(fontWeight: FontWeight.w500,fontSize: 12,color:Colors.black),
                  labelText: "Standard",
                  hintText: "Standard",
                  hintStyle: GoogleFonts.dmSans(fontWeight: FontWeight.w300,fontSize: 12,color:Colors.black),


                ),

              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.015,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(

                decoration: InputDecoration(
                  enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      )

                  ),
                  focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      )

                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      )

                  ),
                  labelStyle: GoogleFonts.dmSans(fontWeight: FontWeight.w500,fontSize: 12,color:Colors.black),
                  labelText: "Schedule",
                  hintText: "Schedule",
                  hintStyle: GoogleFonts.dmSans(fontWeight: FontWeight.w300,fontSize: 12,color:Colors.black),


                ),

              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut2()));
              },
              child: InkWell(
                onTap: (){
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                            ,                              ),
                          child: Container(
                            height: 230,
                            width: MediaQuery.of(context).size.width*0.95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            )
                            ,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Your order is",style: GoogleFonts.dmSans(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800
                                      ),),
                                    ],
                                  ),
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(" Completed!",style: GoogleFonts.dmSans(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800
                                      ),),
                                    ],
                                  ),
                                  Container(
                                    height:80,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/logo.png")
                                      )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                            onTap:(){
                                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homeScreen()));
                                            },
                                            child: Text("Okay",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.blue),)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 30,),








                                ],
                              ),
                            ),),
                        );});
                },
                child: Container(
                  height: 54,
                  width: 302,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff23AA49)
                  ),
                  child: Center(
                    child: Text("Done",style: GoogleFonts.dmSans(color:Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
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
