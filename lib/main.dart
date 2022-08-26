
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/PaymentsScreens/checkout.dart';
import 'package:grocery/Splash%20Module/splash.dart';
import 'package:grocery/store/storescreen.dart';

void main(){

  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'dmSans',
            primaryTextTheme: TextTheme(
            bodyText1: GoogleFonts.dmSans(

            )
            )
          ),
          debugShowCheckedModeBanner: false,
          // home: introScreen2(),
          home: splashScreen(),
          // home: SampleMap(),
          // home: cartScreen(),
          // home: locationScreen(),
          // home: homeScreen(),
          // home: productTile(),
          // home: locationScreen(),
        );
      },

    );


  }
}
