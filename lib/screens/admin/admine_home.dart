import 'package:e_commerce_mini_app/const.dart';
import 'package:e_commerce_mini_app/screens/admin/add_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  static String id = "home for Admin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          RaisedButton(
              child: Text("add product"),
              onPressed: () {
                Navigator.of(context).pushNamed(AddProduct.id);
              }),
          RaisedButton(child: Text("edit product"), onPressed: () {}),
          RaisedButton(child: Text("view orders"), onPressed: () {}),
        ],
      ),
    );
  }
}
