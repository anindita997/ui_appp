import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:uihut_practice/models/start_page_model.dart';
import 'package:uihut_practice/view/login_email_screen.dart';
import 'package:uihut_practice/view/login_password_screen.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100.0),
              Container(
                padding: EdgeInsets.all(12.0),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    //color: Colors.purple,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/clogo.png"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: 20.0),
              Text(
                "We Are Preparing\nSomething Great\nFor You!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30),
              ),
              SizedBox(height: 30.0),
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    clipBehavior: Clip.none,
                    itemCount: website.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: website[index]["color"],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                website[index]["icon"],
                                height: 30,
                                width: 30,
                              ),
                              SizedBox(width: 25.0),
                              Text(
                                "Continue with  ",
                                style: TextStyle(color: Colors.grey[400]),
                              ),
                              Text(
                                website[index]["title"],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20.0),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Log in',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.purpleAccent,
                            fontSize: 18),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => LoginEmail())),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By continuing,you accept the  ',
                  style: TextStyle(color: Colors.grey),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Terms of Use ',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey,
                        )),
                    TextSpan(
                        text: 'and ',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                    TextSpan(
                        text: 'privacy Policy',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
