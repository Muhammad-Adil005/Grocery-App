import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cartTiles extends StatefulWidget {

  const cartTiles({Key? key}) : super(key: key);

  @override
  State<cartTiles> createState() => _cartTilesState();
}

class _cartTilesState extends State<cartTiles> {
  List a = [
    "assets/tomato.png",
    "assets/butternut.png",
    "assets/ginger.png",
    "assets/carrots.png",
  ];
  List b = [
    "Bell Pepper Red",
    "Butternut Squash",
    "Arabic Ginger",
    "Organic Carrots",
  ];
  List c=[
    "1kg, 6\£",
    "1kg, 8\£",
    "1kg, 4\£",
    "1kg, 4\£",

  ];
  List d=[
    "2",
    "4",
    "6",
    "2"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: a.length,
          itemBuilder: (context,index){
            return Container(
              margin: EdgeInsets.only(bottom: 24),
              // padding: EdgeInsets.only(left: 24, right: 24),
              // padding: EdgeInsets.only(top: 25),
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: Colors.blue,
                    //  padding: EdgeInsets.only(top: 10,),
                    height: 60,
                    width: MediaQuery.of(context).size.width-48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // margin: EdgeInsets.only(top: 20),
                          // width: MediaQuery.of(context).size.width*0.2,
                          // height: MediaQuery.of(context).size.height*0.1,
                          height: 42,
                          width: 48,
                          decoration: BoxDecoration(
                            // color: Colors.blue,
                              image: DecorationImage(
                                  image: AssetImage(a[index]),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        Container(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(b[index],
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),),
                              ),
                              SizedBox(height: 4,),
                              Container(
                                child: Text(c[index],
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xffFF324B),

                                  ),),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.25,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF3F5F7),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(child: Icon(Icons.remove,color: Colors.black,)),
                                  ),
                                  Container(
                                    child: Text(d[index],
                                      style: GoogleFonts.dmSans(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700
                                      ),),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(child: Icon(Icons.add,color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey,
                  )
                ],

              ),
            );
          }),
    );

  }
}