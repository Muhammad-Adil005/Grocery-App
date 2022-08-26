import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Item%20Module/item.dart';

class bestsellingTile extends StatefulWidget {
  const bestsellingTile({Key? key}) : super(key: key);
  @override
  State<bestsellingTile> createState() => _bestsellingTileState();
}
List a = [
  "assets/tomato.png",
  "assets/meat2.png",
  "assets/meat2.png",
  "assets/meat2.png",
];
List b = [
  "Bell Pepper Red",
  "Lamb Meat",
  "Lamb Meat",
  "Lamb Meat",
];
List c = [
  "1kg, 4\£",
  "1kg, 45\£",
  "1kg, 45\£",
  "1kg, 45\£",
];
class _bestsellingTileState extends State<bestsellingTile> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: a.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(right: 30),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => itemScreen()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width*0.423,

              // margin: EdgeInsets.only(left: 10,),
              decoration: BoxDecoration(
                  color: Color(0xffF3F5F7),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(a[index])
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,bottom: 12,right: 12,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ Text(b[index],style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                      ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(c[index],style: GoogleFonts.dmSans(
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                            ),),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                              child: Center(child: Icon(Icons.add,color: Colors.white,)),
                            )
                          ],
                        ),
                       ],
                    ),
                  )
                ],

              ),
            ),
          ),

        );
      },
    );
  }
}