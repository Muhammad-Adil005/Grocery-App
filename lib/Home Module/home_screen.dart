import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Cart%20Module/cart.dart';
import 'package:grocery/Home%20Module/app_bar.dart';
import 'package:grocery/Home%20Module/best_selling_tile.dart';
import 'package:grocery/Home%20Module/category_list.dart';
import 'package:grocery/Home%20Module/homescreenTile.dart';
import 'package:grocery/Item%20Module/item.dart';
import 'package:grocery/Splash%20Module/intro.dart';
import 'package:grocery/Utils/textbox.dart';
import 'package:grocery/profile/allSellers.dart';
import 'package:grocery/profile/profile.dart';
import 'package:grocery/store/storescreen.dart';

import 'package:proste_bezier_curve/proste_bezier_curve.dart';
class homeScreen extends StatefulWidget {

  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var index=0;

  List pages=[
    introScreen(),
    introScreen(),
    introScreen(),
    introScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        // extendBodyBehindAppBar: true,


        body: Container(

          // padding: EdgeInsets.only(left: 24,right: 24,top: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15,right: 15,top: 24),
                  child:
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height*0.07,
                        height: 44,
                        color: Colors.transparent,

                        child: homescreenAppbar(),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      customTextbox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        text: 'Search category',
                        textSize: 14,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        // height: MediaQuery.of(context).size.height*0.2,
                        height: 158,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          // color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)),
                        child: homescreenTile(
                        ),
                      ),



                    ],
                  ),),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Text("Best Selling",style: GoogleFonts.roboto(fontSize: 17,fontWeight: FontWeight.w700),),
                      ],
                    ),
                  ),


                  StoreScreen(),






              ],
            ),
          ),

        ),
        bottomNavigationBar:
        Container(
          height: 50,
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => itemScreen()));
                    });
                  },
                child: Image(image: AssetImage('assets/home_bottom_bar1.png'),),

              ),
              InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllSellers()));
                    });
                  },
                child: Image(image: AssetImage('assets/categories_bottom_bar1.png'),),

              ),
              SizedBox(width: 10,),
              InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cartScreen()));
                    });
                  },
                child: Image(image: AssetImage('assets/calender_bottom_bar1.png'),fit: BoxFit.fill,),

              ),
              InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                    });
                  },
               child: Image(image: AssetImage('assets/profile_bottom_bar1.png'),),
                  // child:Icon(Icons.home,color: index==3?Colors.black:Colors.grey,
                  // )
              )
            ],
          ),
        )

        //body:pages.elementAt(index);
        ,floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
            height: 50,
            width: 44,
            child: Stack(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff23AA49),

                  ),
                  child: Image(image: AssetImage('assets/hand.png'),),
                ),
                // Container(
                //   margin: EdgeInsets.only(top: 33,left: 13),
                //   height: 20,
                //   width: 20,
                //   decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       color: Colors.red,
                //       border: Border.all(width: 2,color:Colors.white)
                //   ),
                //   child: Text("4",
                //       style: GoogleFonts.dmSans(
                //           fontWeight: FontWeight.w500,
                //           fontSize: 14,
                //           color: Colors.white
                //       ),
                //       textAlign: TextAlign.center),
                // )
              ],
            ),
      ),
            Text("Home",style: GoogleFonts.dmSans(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,



      ),
    );
  }
}

