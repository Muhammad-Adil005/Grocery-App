import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/PaymentsScreens/checkout2.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
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
            SizedBox(
              height: 50,
            ),
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
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1.  2 Bell Pepper Red",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  Text(
                    "1kg, 4£",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "2. 4 Butternut Squash",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  Text(
                    "1kg, 4£",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "3. 6 Arabic Ginger",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  Text(
                    "1kg, 4£",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "4. 2 Organic Carrots",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  Text(
                    "1kg, 4£",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Container(
                    height: 25,
                    width: 92,
                    decoration: BoxDecoration(
                      color: Color(0xff23AA49),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            "Add Items",
                            style: GoogleFonts.dmSans(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(thickness: 1, color: Colors.black.withOpacity(0.40)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/discount 1.png"),
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "1.  2 Bell Pepper Red",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,size: 20,)
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(thickness: 1, color: Colors.black.withOpacity(0.40)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal:",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                        color: Colors.black),
                  ),
                  Text(
                    "16£",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fees:",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                        color: Colors.black),
                  ),
                  Text(
                    "16£",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery:",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                        color: Colors.black),
                  ),
                  Text(
                    "16£",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Service:",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                        color: Colors.black),
                  ),
                  Text(
                    "16£",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total:",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                        color: Colors.black),
                  ),
                  Text(
                    "16£",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Divider(thickness: 1, color: Colors.black.withOpacity(0.40)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 4),
              child: Row(
                children: [
                  Text(
                    "Payment:",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black),
                  )

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical:5),
              child: Row(
                children: [
                  Container(
                    height: 25,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width:1),
                    ),
                   child:  Row(
mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.apple),
                        Text(
                          "Pay",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Colors.black),
                        )

                      ],
                    ),

                  ),
                  SizedBox(width: 10,),
                  Text(
                    "Apple Pay",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(thickness: 1, color: Colors.black.withOpacity(0.40)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height:40,
                        width: 40,
                        child:Image.asset("assets/paypal 1.png")
                        
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Add Paypal",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black),
                          ),
                          Text(
                            "Paypal is now accepted",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,size: 20,)
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(thickness: 1, color: Colors.black.withOpacity(0.40)),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/discount 1.png"),
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Add Credit Card",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,size: 20,)
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut2()));
              },
              child: Container(
                height: 54,
                width: 302,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff23AA49)
                ),
                child: Center(
                  child: Text("Next - £23.57",style: GoogleFonts.dmSans(color:Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
                ),
              ),
            ),
            SizedBox(height: 100,),

          ],
        ),
      ),
    );
  }
}
