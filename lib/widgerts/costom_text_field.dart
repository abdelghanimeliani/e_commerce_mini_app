import 'package:flutter/material.dart';

import '../const.dart';

class CustomTextField extends StatelessWidget {
  final String hint ;
  final IconData icon ;

  const CustomTextField({
    Key key, @required this.hint, @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,

      ),
      child: TextField(
        cursorColor: kMainColor,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(
            icon,
            color: Colors.lightBlue,
          ),
          fillColor: kSecondaryColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}