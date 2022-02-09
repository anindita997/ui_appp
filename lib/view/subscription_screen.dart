import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                //margin: EdgeInsets.all(6.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xffD6E5EA), width: 1.0)),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                   size: 14,
                ),
              ),
            ),
            Text(
              "Subscriptions",
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: Color(0xff17131B),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Skip",
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: Color(0xffA76FFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60.0),
              Center(child: Image.asset("assets/images/clogo.png")),
              SizedBox(height: 20.0),
              Text(
                "Be Our Premium Member",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0xff000000),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(height: 12.0),
              Text(
                "Cancel at any time, effective at the end of the payment period.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0xff5C5D67),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(height: 60.0),
              Text(
                "By selecting the monthy or annual subscription button below, you are agreeing to start your subscription immediately, and you will be able to withdraw from the contract or recive a refund. You can cancel it at anytime. No refunds or credits will be given for partial month or years.",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0xff5C5D67),
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    wordSpacing: 3.0),
              ),
              SizedBox(height: 30.0),
              Container(
                padding: EdgeInsets.symmetric(vertical: 21.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffF2F9FB),
                    borderRadius: BorderRadius.circular(120.0)),
                child: Center(
                  child: Text(
                    "\$11.98 / month",
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff17131B),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.symmetric(vertical: 21.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffF2F9FB),
                    borderRadius: BorderRadius.circular(120.0)),
                child: Center(
                  child: Text(
                    "\$11.98 / year",
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff17131B),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "(12 months at \$10.00/month, Save over 15%)",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0xff5C5D67),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
