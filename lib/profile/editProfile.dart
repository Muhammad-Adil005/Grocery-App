import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              Row(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back,size: 25,)),
                  SizedBox(width: 10,),

                  Text("Edit Profile", textAlign: TextAlign
                      .start, style: GoogleFonts.roboto(fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.09,),
              Center(
                child: Stack(
                  children: [

                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/Ellipse 154.png"),
                    ),
                    Positioned.fill(child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 40,
                          width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.white),
                          shape: BoxShape.circle,
                          color: Colors.black
                        ),
                        child: Center(
                          child:Icon(Icons.camera_alt_outlined,color: Colors.white,)
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Full Name", textAlign: TextAlign
                      .start, style: GoogleFonts.roboto(fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none
                  ),
                    hintText: "Micheal Sam",
                    hintStyle: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),
                    suffixIcon: Icon(Icons.check_circle,size: 20,),
                    prefixIcon: Icon(Icons.person_outline_rounded,color: Colors.orange,)
                ),

              ),
              Row(
                children: [
                  Text("Phone Number", textAlign: TextAlign
                      .start, style: GoogleFonts.roboto(fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none
                    ),
                    hintText: "+01 65841542265",
                    hintStyle: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),
                    suffixIcon: Icon(Icons.check_circle,size: 20,),
                    prefixIcon: Icon(Icons.phone,color: Colors.orange,)
                ),

              ),
              Row(
                children: [
                  Text("Email", textAlign: TextAlign
                      .start, style: GoogleFonts.roboto(fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none
                    ),
                    hintText: "Micheal@gmail.com",
                    hintStyle: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),
                    suffixIcon: Icon(Icons.check_circle,size: 20,),
                    prefixIcon: Icon(Icons.mail,color: Colors.orange,)
                ),

              ),
              Row(
                children: [
                  Text("Address", textAlign: TextAlign
                      .start, style: GoogleFonts.roboto(fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none
                    ),
                    hintText: "121 berlin city ",
                    hintStyle: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),
                    suffixIcon: Icon(Icons.check_circle,size: 20,),
                    prefixIcon: Icon(Icons.edit_location_sharp,color: Colors.orange,)
                ),

              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Container(
                height: 39,
                width: 144,
                decoration: BoxDecoration(
                  color: Color(0xff23AA49),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Center(
                  child: Text("Save Changes",style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
