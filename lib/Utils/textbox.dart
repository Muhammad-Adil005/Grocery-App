import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customTextbox extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  // final double hinttextSize;
  final bool isPassword;
  final bool isNumber;
  final double textSize;

  TextEditingController? controller;
  customTextbox({Key? key,
    this.width= 342,
    // this.hinttextSize=16,
    this.isPassword = false,
    this.isNumber = false,
    this.text= "Search",
    this.textSize= 12,
    this.height= 50,

  }) : super(key: key);

  @override
  State<customTextbox> createState() => _customTextboxState();
}

class _customTextboxState extends State<customTextbox> {
  bool isObscure= false;
  @override
  void initState() {
    super.initState();
    print(widget.isPassword == true);
    setState(() {
      isObscure = widget.isPassword == true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(

      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(67.0),


      ),
      child: TextFormField(
        obscureText: isObscure,



        cursorColor:  Colors.blue,
        style: GoogleFonts.dmSans(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: widget.textSize,


        ),

        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          // prefixIcon: Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: AssetImage('assets/search_icon.png'))
          //   ),
          // ),
          prefixIcon: Icon(Icons.search,color: Color(0xff23AA49)),
          border: InputBorder.none,
          disabledBorder: InputBorder.none,
          suffixIcon: widget.isPassword
              ? GestureDetector(
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              child: Icon(
                isObscure? Icons.visibility : Icons.visibility_off,
                color: Color(0xffC4C4C4),
                size: 20,
              )
          ): SizedBox(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(67),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          focusColor: Colors.blue,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(67),
              borderSide: BorderSide(
                width: 1.0,
                color: Colors.transparent,
              )
          ),

          hintText: widget.text,

          hintStyle: GoogleFonts.dmSans(

              color: Color(0xffC4C4C4)
              ,fontSize: widget.textSize),

        ),
      ),
    );
  }
}