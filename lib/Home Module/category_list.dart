import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Item%20Module/item.dart';

class categoryList extends StatefulWidget {
  const categoryList({Key? key}) : super(key: key);

  @override
  State<categoryList> createState() => _categoryListState();
}

List a = [
  "assets/apple1.png",
  "assets/vegetables1.png",
  "assets/cheese1.png",
  "assets/meat1.png"
];
List b = [
  "Fruits",
  "Vegetables",
  "Diary",
  "Meat"
];

class _categoryListState extends State<categoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.16,
      // color: Colors.white,

      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: a.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => itemScreen()));
                });
              },
              child: Container(

                height: MediaQuery.of(context).size.height*0.02,
                width: MediaQuery.of(context).size.width*0.235,
                // width: 100,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(18
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF3F5F7),
                      ),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Container(
                        // width: 35,
                        // height: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(a[index]),
                                // fit: BoxFit.fill
                            ),
                            shape: BoxShape.circle
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(b[index], style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700
                    ),),
                  ],
                ),
              ),
            );
          }),
    );

  }
}