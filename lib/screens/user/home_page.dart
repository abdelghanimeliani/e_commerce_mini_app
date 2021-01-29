import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String id = "home for user";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "home for user"
        ),
      ),
      body: Column(
        children: [
          Text('welcome USER'),
        ],
      ),
    );
  }
}
