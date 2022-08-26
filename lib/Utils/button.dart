import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customButton extends StatefulWidget {
  final title;
  final double width;
  final double height;
  final Color btcolor;
  final Color txtcolor;
  final double txtsize;
  final String txtweight;
  final VoidCallback callback;
  customButton({
    Key? key,
    this.title = "",
    this.width= 303,
    this.height= 44,
    this.txtsize= 18,
    this.txtweight= 'w700',
    required this.callback,
    this.btcolor=Colors.blue,
    this.txtcolor=Colors.white,

  }) : super(key: key);

  @override
  _customButtonState createState() => _customButtonState();
}

class _customButtonState extends State<customButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:(){
        widget.callback();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
      color: widget.btcolor,

      highlightColor: Colors.blue[200],

      // child: Image.asset(''),
      child: Text(
        widget.title,
        style: GoogleFonts.dmSans(
          fontSize: widget.txtsize
          , color: widget.txtcolor,fontWeight: FontWeight.w700,
        ),

      ),
      minWidth: widget.width,
      height: widget.height,

    );
  }
}

void callback() {
  callback();
}