import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Item%20Module/item_tile.dart';

class itemScreen extends StatefulWidget {
  const itemScreen({Key? key}) : super(key: key);

  @override
  State<itemScreen> createState() => _itemScreenState();
}

class _itemScreenState extends State<itemScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("TORTHAI",
                            style: GoogleFonts.dmSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 24),
                        height: 44,
                        width: 44,
                        child: ElevatedButton(

                         onPressed: () {

                         },
                          child: Icon(
                            Icons.search,
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
                    ],
                  ),
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
                            width: 136,
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
                TabBar(
                  labelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 10),
                  indicatorColor: Colors.green,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.green,
                  tabs: [
                    Tab(


                        text: ("Vegetable")),
                    Tab(text: ("Fruit"),),
                    Tab(text: ("Diary"),),
                    Tab(text: ("Meet"),),
                  ],),
                Container(
                  height: 700,


                  child: TabBarView(children: [
                   itemTile(),
                    itemTile(),
              itemTile(),
          itemTile(),

                  ]),


                )

                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   height: MediaQuery.of(context).size.height*0.9,
                //   child: itemTile(),
                // )
              ],
            ),
          )
      ),
    );
  }
}