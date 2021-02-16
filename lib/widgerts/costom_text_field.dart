import 'package:flutter/material.dart';

import '../const.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Function onClick;
  String _err() {
    if (hint == "ENTER YOUR E-MAIL") {
      return "mail is empty";
    } else if (hint == "ENTER YOUR PASSWORD") {
      return "password is empty";
    } else if (hint == "name") {
      return "name is empty";
    } else {
      return "something is wrong";
    }
  }

  const CustomTextField({
    @required this.onClick,
    Key key,
    @required this.hint,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextFormField(
        validator: (val) {
          if (val.isEmpty) {
            return _err();
          } else {
            return null;
          }
        },
        // pour rendre le textField du mot de passe cache les caractère !
        obscureText: hint == 'Enter your password' ? true : false,
        //pour obtenir le texte du textfield
        onSaved: onClick,
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
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
