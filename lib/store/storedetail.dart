import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Home%20Module/best_selling_tile.dart';
import 'package:grocery/Home%20Module/homescreenTile.dart';
import 'package:grocery/Item%20Module/item.dart';
class StoreDetail extends StatefulWidget {
  const StoreDetail({Key? key}) : super(key: key);

  @override
  State<StoreDetail> createState() => _StoreDetailState();
}

class _StoreDetailState extends State<StoreDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60,),
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

          Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 24),

            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: [


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Best Selling",style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                        ),),
                        Container(
                          width: MediaQuery.of(context).size.width*0.05,
                          height: MediaQuery.of(context).size.height*0.05,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Fire.png"
                                  )
                              )
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => itemScreen()));
                        });
                      },
                      child: Container(
                        child: Text("see all",style: GoogleFonts.dmSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff23AA49)
                        ),),
                      ),
                    )
                  ],
                ),
                Container(
                    height: MediaQuery.of(context).size.height*0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16)
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: bestsellingTile()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
