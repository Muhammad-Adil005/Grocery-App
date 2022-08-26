import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_picker/country_picker.dart';
import 'package:grocery/Home%20Module/home_screen.dart';
import 'package:grocery/Splash%20Module/numeric_buttons.dart';
import 'package:grocery/Splash%20Module/verification_screen2.dart';
// import 'numericButton.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String countryCode = '+44';
  String value = '';
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height-20;
    return Scaffold(
      body: Container(
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 24),
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Color(0xff06161C),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                        side: BorderSide(color: Colors.white),
                        primary: Colors.white,
                        shadowColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              child: Image(
                image: AssetImage('assets/logo.png'),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                'Verification Code',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: Color(0xff06161C),
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                'Enter your verification ode',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: Color(0xff979899),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 2,width: 40,color: Colors.grey,),
                  Container(height: 2,width: 40,color: Colors.grey,),
                  Container(height: 2,width: 40,color: Colors.grey,),
                  Container(height: 2,width: 40,color: Colors.grey,),
                  Container(height: 2,width: 40,color: Colors.grey,),
                  Container(height: 2,width: 40,color: Colors.grey,)

                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 53,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>homeScreen()));
                },
                child: Text(
                  'Continue',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff23AA49),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                      'By clicking on "Continue" you are agreeing to our ',
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA9A9AA),
                      ),
                    ),
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   height: 200,
            //   margin: EdgeInsets.only(left: 16, right: 16),
            //   decoration: BoxDecoration(
            //       color: Color(0xffF3F5F7),
            //       borderRadius: BorderRadius.circular(24)),
            //   child: Column(
            //     children: [
            //       Expanded(
            //         child: Row(
            //           children: [
            //             Expanded(
            //               child: numericButton(
            //                 num: "1",
            //                 onPress: () {
            //                   String updatedText = myController.text + '1';
            //                   myController.value = myController.value.copyWith(
            //                     text: updatedText,
            //                     selection: TextSelection.collapsed(
            //                         offset: updatedText.length),
            //                   );
            //                 },
            //               ),
            //             ),
            //             Expanded(
            //               child: numericButton(
            //                 num: "2",
            //                 onPress: () {
            //                   String updatedText = myController.text + '2';
            //                   myController.value = myController.value.copyWith(
            //                     text: updatedText,
            //                     selection: TextSelection.collapsed(
            //                         offset: updatedText.length),
            //                   );
            //                 },
            //               ),
            //             ),
            //             Expanded(
            //               child: numericButton(
            //                 num: "3",
            //                 onPress: () {
            //                   String updatedText = myController.text + '3';
            //                   myController.value = myController.value.copyWith(
            //                     text: updatedText,
            //                     selection: TextSelection.collapsed(
            //                         offset: updatedText.length),
            //                   );
            //                 },
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Expanded(
            //         child: Row(
            //           children: [
            //             Expanded(
            //               child: numericButton(
            //                 num: "4",
            //                 onPress: () {
            //                   String updatedText = myController.text + '4';
            //                   myController.value = myController.value.copyWith(
            //                     text: updatedText,
            //                     selection: TextSelection.collapsed(
            //                         offset: updatedText.length),
            //                   );
            //                 },
            //               ),
            //             ),
            //             Expanded(
            //               child: numericButton(
            //                 num: "5",
            //                 onPress: () {
            //                   String updatedText = myController.text + '5';
            //                   myController.value = myController.value.copyWith(
            //                     text: updatedText,
            //                     selection: TextSelection.collapsed(
            //                         offset: updatedText.length),
            //                   );
            //                 },
            //               ),
            //             ),
            //             Expanded(
            //               child: numericButton(
            //                 num: "6",
            //                 onPress: () {
            //                   String updatedText = myController.text + '6';
            //                   myController.value = myController.value.copyWith(
            //                     text: updatedText,
            //                     selection: TextSelection.collapsed(
            //                         offset: updatedText.length),
            //                   );
            //                 },
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Expanded(
            //         child: Row(
            //           children: [
            //             Expanded(
            //               child: numericButton(
            //                 num: "7",
            //                 onPress: () {
            //                   String updatedText = myController.text + '7';
            //                   myController.value = myController.value.copyWith(
            //                     text: updatedText,
            //                     selection: TextSelection.collapsed(
            //                         offset: updatedText.length),
            //                   );
            //                 },
            //               ),
            //             ),
            //             Expanded(
            //               child: numericButton(
            //                 num: "8",
            //                 onPress: () {
            //                   String updatedText = myController.text + '8';
            //                   myController.value = myController.value.copyWith(
            //                     text: updatedText,
            //                     selection: TextSelection.collapsed(
            //                         offset: updatedText.length),
            //                   );
            //                 },
            //               ),
            //             ),
            //             Expanded(
            //               child: numericButton(
            //                 num: "9",
            //                 onPress: () {
            //                   String updatedText = myController.text + '9';
            //                   myController.value = myController.value.copyWith(
            //                     text: updatedText,
            //                     selection: TextSelection.collapsed(
            //                         offset: updatedText.length),
            //                   );
            //                 },
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Expanded(
            //         child: Row(
            //           children: [
            //             Expanded(child: Text('')),
            //             Expanded(
            //               child: numericButton(
            //                 num: "0",
            //                 onPress: () {
            //                   String updatedText = myController.text + '0';
            //                   myController.value = myController.value.copyWith(
            //                     text: updatedText,
            //                     selection: TextSelection.collapsed(
            //                         offset: updatedText.length),
            //                   );
            //                 },
            //               ),
            //             ),
            //             Expanded(
            //               child: InkWell(
            //                 onTap: () {
            //                   String updatedText = myController.text
            //                       .substring(0, myController.text.length - 1);
            //                   myController.value = myController.value.copyWith(
            //                     text: updatedText,
            //                     selection: TextSelection.collapsed(
            //                         offset: updatedText.length),
            //                   );
            //                 },
            //                 child: Icon(
            //                   Icons.cancel_presentation_sharp,
            //                   color: Color(0xff979899),
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}