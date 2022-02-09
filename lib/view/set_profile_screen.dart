import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uihut_practice/shared_widget/custom_textfield.dart';
import 'package:uihut_practice/shared_widget/custom_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xffD6E5EA), width: 1.0)),
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,size: 14,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              Text(
                "Start Your Profile",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(
                "This is how you're display in community",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.asset("assets/images/pp.png"),
                  SizedBox(width: 5.0),
                  Expanded(
                    child: Column(
                      children: [
                        CustomTextField(hinttext: "Name"),
                        CustomTextField(hinttext: "Email"),
                      ],
                    ),
                  )
                ],

              ),
              SizedBox(height: 70),
              Center(child: CustomButton(title: "Continue", onPressed: (){},))

            ],
          ),
        ),
      ),
    );
  }
}
