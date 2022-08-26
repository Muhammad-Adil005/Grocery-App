import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_picker/country_picker.dart';
import 'package:grocery/Home%20Module/home_screen.dart';
import 'package:grocery/Splash%20Module/numeric_buttons.dart';
import 'package:grocery/Splash%20Module/verification_screen.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
// import 'numericButton.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  String countryCode = '+44';
  String value = '';
  final myController = TextEditingController();
  //
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controller.dispose();
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
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                'Enter your mobile number',
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
                'We will send you a verification code',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: Color(0xff979899),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      print(value);
                    },
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      showFlags: true,
                      useEmoji: true
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    initialValue: number,
                    textFieldController: controller,
                    formatInput: false,
                    keyboardType:
                    TextInputType.numberWithOptions(signed: true, decimal: true),
                    inputBorder: OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    },
                  ),
                ),
              ),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width * 0.8,
            //   child: Row(
            //     //mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         padding: EdgeInsets.only(bottom: 22),
            //         child: TextButton(
            //           onPressed: () {
            //             showCountryPicker(
            //               context: context,
            //               showPhoneCode: true,
            //               onSelect: (Country country) {
            //                 setState(
            //                       () {
            //                     countryCode = '+' + country.phoneCode;
            //                   },
            //                 );
            //               },
            //             );
            //           },
            //           style: TextButton.styleFrom(
            //             padding: EdgeInsets.zero,
            //             minimumSize: Size(50, 30),
            //             tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //           ),
            //           child: Text(
            //             countryCode,
            //             style: GoogleFonts.dmSans(
            //               fontSize: 24,
            //               fontWeight: FontWeight.w700,
            //               color: Color(0xff06161C),
            //             ),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(bottom: 22),
            //         // padding: EdgeInsets.only(top: 15),
            //         color: Color(0xff06161C),
            //         width: 2,
            //         height: 20,
            //       ),
            //       Container(
            //         padding: EdgeInsets.only(left: 3),
            //         width: 219,
            //         height: 31,
            //         child: TextFormField(
            //           controller: myController,
            //           style: GoogleFonts.dmSans(
            //             fontSize: 24,
            //             fontWeight: FontWeight.w700,
            //           ),
            //           decoration: InputDecoration(
            //             border: InputBorder.none,
            //             focusedBorder: InputBorder.none,
            //             hintText: '(000)000-00-00',
            //             hintStyle: GoogleFonts.dmSans(
            //               color: Color(0xffE0E0E0),
            //               fontWeight: FontWeight.w700,
            //               fontSize: 24,
            //             ),
            //           ),
            //           keyboardType: TextInputType.none,
            //           inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 53,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerificationScreen()));
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

          ],
        ),
      ),
    );
  }
  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
    await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

}