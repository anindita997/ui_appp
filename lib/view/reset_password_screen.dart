import 'package:flutter/material.dart';
import 'package:uihut_practice/shared_widget/custom_button.dart';
import 'package:uihut_practice/shared_widget/custom_textfield.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
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
              Text("Reset Password",style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: Color(0xff17131B),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),),
              SizedBox(height: 10.0),
              Text("Enter your new password",style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: Color(0xff5C5D67),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),),
              SizedBox(height: 30.0),
              CustomTextField(hinttext: "Enter New Password"),
              SizedBox(height: 10.0),
              CustomTextField(hinttext: "Confirm Password"),
              SizedBox(height: 70.0),
              Center(child: CustomButton(title: "Continue", onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) => ,
                //   ),
                // );
              },)),
            ],
          ),
        ),
      ),
    );
  }
}
