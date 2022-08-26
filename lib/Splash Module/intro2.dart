// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:grocero_project/Home%20Module/home_screen.dart';
// import 'package:grocero_project/Splash%20Module/login_screen.dart';
// import 'package:grocero_project/Splash%20Module/splash.dart';
// import 'package:grocero_project/Utils/button.dart';
//
// class introScreen2 extends StatelessWidget {
//   const introScreen2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           // color: Color(0xffF5F5F5),
//           color: Colors.white,
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Container(
//                       width: 45,
//                       height: 39,
//                       margin: EdgeInsets.only(top: 31,right: 26,bottom: 22),
//
//                       decoration: BoxDecoration(
//                         image: DecorationImage(image: AssetImage('assets/leaf1.png'))
//                       ),
//                     )
//                   ],
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(bottom: 36),
//                   child: Text(
//                     'LOGO HERE',
//                     textAlign: TextAlign.center,
//                     style: GoogleFonts.dmSans(
//                       color: Color(0xff3F2037),
//                       fontSize: 28,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         width: MediaQuery.of(context).size.width * 0.8,
//                         child: Text(
//                           'Get your groceries delivered to your home',
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.dmSans(
//                             color: Color(0xff061616),
//                             fontSize: 28,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.only(top: 16),
//                         width: MediaQuery.of(context).size.width * 0.8,
//                         child: Text(
//                           'The best delivery app in town for delivering your daily fresh groceries',
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.dmSans(
//                             color: Color(0xff979899),
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 40,
//                       ),
//                       Container(
//                         width: MediaQuery.of(context).size.width * 0.48,
//                         height: 53,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => homeScreen()));
//                           },
//                           child: Text(
//                             'Shop now',
//                             style: GoogleFonts.dmSans(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 16,
//                               color: Colors.white,
//                             ),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             primary: Color(0xff23AA49),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(100),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Container(
//                             width: 45,
//                             height: 39,
//                             // margin: EdgeInsets.only(top: 31,right: 26,bottom: 22),
//
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(image: AssetImage('assets/leaf3.png'))
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 60,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Container(
//                             width: 33,
//                             height: 28,
//                             margin: EdgeInsets.only(left: 30,),
//
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(image: AssetImage('assets/leaf2.png'))
//                             ),
//                           ),
//                         ],
//                       ),
//
//                           Container(
//                             height: MediaQuery.of(context).size.height*0.4,
//                             width: MediaQuery.of(context).size.width,
//                             // margin: EdgeInsets.only(top: 545,),
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: AssetImage('assets/food.png'),
//                                     fit: BoxFit.fill
//                                 )),
//                             // child: Text('LOGO HERE',style: TextStyle(fontSize: 36,color: Color(0xff3F2037)),)
//                           ),
//
//
//                     ],
//                   ),
//                 )
//
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
