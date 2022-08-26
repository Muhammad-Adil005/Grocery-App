import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class StoreInformation extends StatelessWidget {
  const StoreInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/download.jfif"
                )
              )
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 34.0,horizontal: 10),
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            shape: BoxShape.circle,

                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios_new,color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("KFC Ealing - The Mall",style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w700,fontSize: 17,color: Colors.black
                ),),
                Text("4.5",style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w700,fontSize: 17,color: Colors.black
                ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 3),
            child: Row(

              children: [
                Icon(Icons.workspace_premium_sharp,color: Colors.orange,),
                Text("£5.22 Delivery Fee . 10 - 20 min",style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,fontSize: 17,color: Colors.black
                ),),

              ],
            ),
          )

        ],
      ),
    );
  }
}
