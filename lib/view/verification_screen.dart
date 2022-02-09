// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';
import '../shared_widget/custom_button.dart' ;



class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  _VerificationCodeState createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xffD6E5EA), width: 1.0)),
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,size: 14,
            ),
          ),
        ) ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.0),
              Text("Verification Code",style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: Color(0xff17131B),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),),
              SizedBox(height: 10.0),
              Text("We send code to hellobesnik@gmail.com",style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: Color(0xff5C5D67),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),),
              SizedBox(height: 30.0),
              PinCodeTextField(
                appContext: context,
                pastedTextStyle: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                ),
                length: 4,
                //obscureText: false,

                // animationType: AnimationType.fade,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(50),
                    fieldHeight: 60,
                    fieldWidth: 60,
                    activeColor: Colors.grey,
                    inactiveColor: Colors.grey,
                    selectedFillColor: Colors.transparent,
                    selectedColor: Colors.yellow,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white),
                cursorColor: Colors.black,
                //animationDuration: Duration(milliseconds: 300),
                textStyle: TextStyle(fontSize: 20, height: 1.6),
                enableActiveFill: true,
                keyboardType: TextInputType.number,
                onChanged: (String value) {},
              ),
              SizedBox(height: 70.0),
              Center(child: CustomButton(title: "Continue", onPressed: () {
              },)),
            ],
          ),
        ),
      ),
    );
  }
}
