
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String title;
   final Function onPressed;

  const CustomButton({Key? key,required this.title,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          height:  46,
          width: MediaQuery.of(context).size.width/1.3,
          decoration: BoxDecoration(
              color: Color(0xffA76FFF), borderRadius: BorderRadius.circular(36.0)),
          child: Center(
              child: Text(
                title,
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 14.0,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w600),
              ))),
      onTap: onPressed(),
    );
  }
}
