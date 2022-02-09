import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final hinttext;
  const CustomTextField({Key? key,required this.hinttext}) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        child: TextFormField(
          decoration: InputDecoration(
            hintText: widget.hinttext,
            hintStyle: TextStyle(color: Colors.grey[300],fontFamily: 'OpenSans',),
          ),
        ),
      ),
    );
  }
}
