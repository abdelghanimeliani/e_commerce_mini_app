import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  static String id = "home for Admin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home for Admin"),
      ),
      body: Column(
        children: [
          Text('welcome ADMIN'),
        ],
      ),
    );
  }
}
