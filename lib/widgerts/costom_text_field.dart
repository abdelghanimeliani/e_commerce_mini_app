import 'package:flutter/material.dart';

import '../const.dart';

class CustomTextField extends StatelessWidget {
  final String hint ;
  final IconData icon ;
String _err ()
{
  switch(hint){
    case "ENTER YOUR E-MAIL" : return "mail is empty";
    case "ENTER YOUR PASSWORD" : return "password is empty";
    case "name" : return "name is empty";
  }
}
  const CustomTextField({
    Key key, @required this.hint, @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,

      ),
      child: TextFormField(
        validator: (val){
          if(val.isEmpty){
            return _err();
          }else{
            return null ;
          }
        },
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
          border :  OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}