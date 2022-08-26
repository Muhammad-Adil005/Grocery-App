import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Cart%20Module/cart_tiles.dart';
import 'package:grocery/Location%20Module/location.dart';
import 'package:grocery/PaymentsScreens/checkout.dart';
import 'package:grocery/Utils/button.dart';


class cartScreen extends StatefulWidget {
  const cartScreen({Key? key}) : super(key: key);

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // padding: EdgeInsets.only(left: 24,right: 24),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(children: [
                Column(children: [
                  Container(
                    // color: Colors.black12,
                    // height: MediaQuery.of(context).size.height*0.2,
                    height: 44,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 24,top: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
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
                        Row(
                          children: [
                            Text("Cart",
                              style: GoogleFonts.dmSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),),
                          ],
                        ),
                        Container(
                          width: 44,
                          margin: EdgeInsets.only(left: 24),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.blue,
                        // margin: EdgeInsets.only(top: 15),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height-169,
                        child: cartTiles(),
                      ),

                    ],
                  ),


                ],


                ),
                Positioned(
                  bottom: 20,
                  right: 24,
                  left: 24,
                  child: Container(
                    margin: EdgeInsets.only(left: 24,right: 24,bottom: 0),

                    child: customButton(
                      height: 53,
                      width: MediaQuery.of(context).size.width,
                      callback: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => locationScreen()));
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(20)
,                              ),
                              child: Container(
                                height: 650,
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
                                    Row(children: [
                                      InkWell(
                                          onTap:(){
                                Navigator.pop(context);
                              },
                                          child: Icon(Icons.close)),
                                    ],),
                                    SizedBox(height: 10,),
                                    Container(
                                      width:170
,
                                      child: Text("Complete your order with these",style: GoogleFonts.dmSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800
                                      ),),
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 150,
                                        decoration: BoxDecoration
                                          (
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset: Offset(0, 3), // changes position of shadow
                                            ),
                                          ],color: Colors.white
                                        ),



                                        child: Column(
                                          children: [
                                            Container(
                                              height: 100,
                                              width: 300,
                                              decoration: BoxDecoration(
                                                color: Colors.orange,
                                                image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                    "assets/food.png"
                                                  )
                                                )
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Mangoes",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w700),),
                                                      Text("\£567",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.grey),),


                                                    ],
                                                  ),
                                                  Container(height:30,width: 100,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey.shade100,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  child: Center(child: Text("+ Add to basket",style: GoogleFonts.dmSans(fontSize: 10),)),)
                                                ],
                                              ),
                                            )

                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 150,
                                        decoration: BoxDecoration
                                          (
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 1,
                                                blurRadius: 1,
                                                offset: Offset(0, 3), // changes position of shadow
                                              ),
                                            ],color: Colors.white
                                        ),



                                        child: Column(
                                          children: [
                                            Container(
                                              height: 100,
                                              width: 300,
                                              decoration: BoxDecoration(
                                                  color: Colors.orange,
                                                  image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: AssetImage(
                                                          "assets/food.png"
                                                      )
                                                  )
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Mangoes",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w700),),
                                                      Text("\£567",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.grey),),


                                                    ],
                                                  ),
                                                  Container(height:30,width: 100,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey.shade100,
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                    child: Center(child: Text("+ Add to basket",style: GoogleFonts.dmSans(fontSize: 10),)),)
                                                ],
                                              ),
                                            )

                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 140,),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut()));
                                        },
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                          ),child: Center(child: Text("No Thanks",style: GoogleFonts.dmSans(color: Colors.white),)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),),
                            );

                          },
                        );
                      },
                      title: "Checkout",

                      btcolor: Color(0xff23AA49),
                    ),
                  ),
                ),

              ],),


            ],
          ),
        ),
      ),
    );
  }
}